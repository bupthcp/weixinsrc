// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ControlDecoration.java

package org.eclipse.m2e.core.ui.internal.search.util;

import java.io.PrintStream;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.*;
import org.eclipse.swt.graphics.*;
import org.eclipse.swt.widgets.*;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.search.util:
//            MenuDetectEvent, MenuDetectListener

public class ControlDecoration
{
    class Hover
    {

        int[] getPolygon(boolean border)
        {
            Point e = getExtent();
            int b = border ? 1 : 0;
            if(arrowOnLeft)
                return (new int[] {
                    0, 0, e.x - b, 0, e.x - b, e.y - b, hao + haw, e.y - b, hao + haw / 2, (e.y + hah) - b, 
                    hao, e.y - b, 0, e.y - b, 0, 0
                });
            else
                return (new int[] {
                    0, 0, e.x - b, 0, e.x - b, e.y - b, e.x - hao - b, e.y - b, e.x - hao - haw / 2, (e.y + hah) - b, 
                    e.x - hao - haw, e.y - b, 0, e.y - b, 0, 0
                });
        }

        void dispose()
        {
            if(!hoverShell.isDisposed())
                hoverShell.dispose();
            if(region != null)
                region.dispose();
        }

        void setVisible(boolean visible)
        {
            if(visible)
            {
                if(!hoverShell.isVisible())
                    hoverShell.setVisible(true);
            } else
            if(hoverShell.isVisible())
                hoverShell.setVisible(false);
        }

        void setText(String t, Rectangle decorationRectangle, Control targetControl)
        {
            if(t == null)
                t = "";
            if(!t.equals(text))
            {
                Point oldSize = getExtent();
                text = t;
                hoverShell.redraw();
                Point newSize = getExtent();
                if(!oldSize.equals(newSize))
                {
                    arrowOnLeft = decorationRectangle.x <= targetControl.getLocation().x;
                    setNewShape();
                }
            }
            Point extent = getExtent();
            int y = (-extent.y - hah) + 1;
            int x = arrowOnLeft ? -hao + haw / 2 : -extent.x + hao + haw / 2;
            hoverShell.setLocation(control.getParent().toDisplay(decorationRectangle.x + x, decorationRectangle.y + y));
        }

        boolean isVisible()
        {
            return hoverShell.isVisible();
        }

        Point getExtent()
        {
            GC gc = new GC(hoverShell);
            Point e = gc.textExtent(text);
            gc.dispose();
            e.x += hm * 2;
            e.y += hm * 2;
            return e;
        }

        void setNewShape()
        {
            Region oldRegion = region;
            region = new Region();
            region.add(getPolygon(false));
            hoverShell.setRegion(region);
            if(oldRegion != null)
                oldRegion.dispose();
        }

        private static final String EMPTY = "";
        private int hao;
        private int haw;
        private int hah;
        int hm;
        Shell hoverShell;
        String text;
        Region region;
        boolean arrowOnLeft;
        final ControlDecoration this$0;


        Hover(Shell parent)
        {
            this$0 = ControlDecoration.this;
            super();
            hao = 10;
            haw = 8;
            hah = 10;
            hm = 2;
            text = "";
            arrowOnLeft = true;
            Display display = parent.getDisplay();
            hoverShell = new Shell(parent, 0x8400c);
            hoverShell.setBackground(display.getSystemColor(29));
            hoverShell.setForeground(display.getSystemColor(28));
            hoverShell.addPaintListener(new PaintListener() {

                public void paintControl(PaintEvent pe)
                {
                    pe.gc.drawText(text, hm, hm);
                    if(!ControlDecoration.CARBON)
                        pe.gc.drawPolygon(getPolygon(true));
                }

                final Hover this$1;

                
                {
                    this$1 = Hover.this;
                    super();
                }
            }
);
            hoverShell.addMouseListener(new MouseAdapter() {

                public void mouseDown(MouseEvent e)
                {
                    hideHover();
                }

                final Hover this$1;

                
                {
                    this$1 = Hover.this;
                    super();
                }
            }
);
        }
    }


    public ControlDecoration(Control control, int position)
    {
        this(control, position, null);
    }

    public ControlDecoration(Control control, int position, Composite composite)
    {
        visible = true;
        showOnlyOnFocus = false;
        showHover = true;
        marginWidth = 0;
        selectionListeners = new ListenerList();
        menuDetectListeners = new ListenerList();
        moveListeningTarget = null;
        listenerInstalls = 0;
        hasFocus = false;
        this.position = position;
        this.control = control;
        this.composite = composite;
        addControlListeners();
    }

    public void addMenuDetectListener(MenuDetectListener listener)
    {
        menuDetectListeners.add(listener);
    }

    public void removeMenuDetectListener(MenuDetectListener listener)
    {
        menuDetectListeners.remove(listener);
    }

    public void addSelectionListener(SelectionListener listener)
    {
        selectionListeners.add(listener);
    }

    public void removeSelectionListener(SelectionListener listener)
    {
        selectionListeners.remove(listener);
    }

    public void dispose()
    {
        if(control == null)
            return;
        if(hover != null)
        {
            hover.dispose();
            hover = null;
        }
        removeControlListeners();
        control = null;
    }

    public Control getControl()
    {
        return control;
    }

    private void addControlListeners()
    {
        disposeListener = new DisposeListener() {

            public void widgetDisposed(DisposeEvent event)
            {
                dispose();
            }

            final ControlDecoration this$0;

            
            {
                this$0 = ControlDecoration.this;
                super();
            }
        }
;
        printAddListener(control, "DISPOSE");
        control.addDisposeListener(disposeListener);
        focusListener = new FocusListener() {

            public void focusGained(FocusEvent event)
            {
                hasFocus = true;
                if(showOnlyOnFocus)
                    update();
            }

            public void focusLost(FocusEvent event)
            {
                hasFocus = false;
                if(showOnlyOnFocus)
                    update();
            }

            final ControlDecoration this$0;

            
            {
                this$0 = ControlDecoration.this;
                super();
            }
        }
;
        printAddListener(control, "FOCUS");
        control.addFocusListener(focusListener);
        paintListener = new PaintListener() {

            public void paintControl(PaintEvent event)
            {
                Control control = (Control)event.widget;
                Rectangle rect = getDecorationRectangle(control);
                if(shouldShowDecoration())
                    event.gc.drawImage(getImage(), rect.x, rect.y);
            }

            final ControlDecoration this$0;

            
            {
                this$0 = ControlDecoration.this;
                super();
            }
        }
;
        mouseMoveListener = new MouseMoveListener() {

            public void mouseMove(MouseEvent event)
            {
                if(showHover && !decorationRectangle.contains(event.x, event.y))
                {
                    hideHover();
                    printRemoveListener(event.widget, "MOUSEMOVE");
                    ((Control)event.widget).removeMouseMoveListener(mouseMoveListener);
                    moveListeningTarget = null;
                }
            }

            final ControlDecoration this$0;

            
            {
                this$0 = ControlDecoration.this;
                super();
            }
        }
;
        mouseTrackListener = new MouseTrackListener() {

            public void mouseExit(MouseEvent event)
            {
                Control target = (Control)event.widget;
                if(target == moveListeningTarget)
                {
                    printRemoveListener(target, "MOUSEMOVE");
                    target.removeMouseMoveListener(mouseMoveListener);
                    moveListeningTarget = null;
                }
                hideHover();
            }

            public void mouseHover(MouseEvent event)
            {
                if(showHover)
                {
                    decorationRectangle = getDecorationRectangle((Control)event.widget);
                    if(decorationRectangle.contains(event.x, event.y))
                    {
                        showHoverText(getDescriptionText());
                        Control target = (Control)event.widget;
                        if(moveListeningTarget == null)
                        {
                            printAddListener(target, "MOUSEMOVE");
                            target.addMouseMoveListener(mouseMoveListener);
                            moveListeningTarget = target;
                        } else
                        if(target != moveListeningTarget)
                        {
                            printRemoveListener(moveListeningTarget, "MOUSEMOVE");
                            moveListeningTarget.removeMouseMoveListener(mouseMoveListener);
                            printAddListener(target, "MOUSEMOVE");
                            target.addMouseMoveListener(mouseMoveListener);
                            moveListeningTarget = target;
                        }
                    }
                }
            }

            public void mouseEnter(MouseEvent mouseevent)
            {
            }

            final ControlDecoration this$0;

            
            {
                this$0 = ControlDecoration.this;
                super();
            }
        }
;
        compositeListener = new Listener() {

            public void handleEvent(Event event)
            {
                if(!visible)
                    return;
                switch(event.type)
                {
                default:
                    break;

                case 3: // '\003'
                    if(!selectionListeners.isEmpty())
                        notifySelectionListeners(event);
                    break;

                case 8: // '\b'
                    if(!selectionListeners.isEmpty())
                        notifySelectionListeners(event);
                    break;

                case 35: // '#'
                    if(!menuDetectListeners.isEmpty())
                        notifyMenuDetectListeners(event);
                    break;
                }
            }

            final ControlDecoration this$0;

            
            {
                this$0 = ControlDecoration.this;
                super();
            }
        }
;
        for(Composite c = control.getParent(); c != null;)
        {
            installCompositeListeners(c);
            if(composite != null && composite == c)
                c = null;
            else
            if(c instanceof Shell)
                c = null;
            else
                c = c.getParent();
        }

        update();
    }

    private void installCompositeListeners(Composite c)
    {
        if(!c.isDisposed())
        {
            printAddListener(c, "PAINT");
            c.addPaintListener(paintListener);
            printAddListener(c, "MOUSETRACK");
            c.addMouseTrackListener(mouseTrackListener);
            printAddListener(c, "SWT.MenuDetect");
            c.addListener(35, compositeListener);
            printAddListener(c, "SWT.MouseDown");
            c.addListener(3, compositeListener);
            printAddListener(c, "SWT.MouseDoubleClick");
            c.addListener(8, compositeListener);
        }
    }

    private void removeCompositeListeners(Composite c)
    {
        if(!c.isDisposed())
        {
            printRemoveListener(c, "PAINT");
            c.removePaintListener(paintListener);
            printRemoveListener(c, "MOUSETRACK");
            c.removeMouseTrackListener(mouseTrackListener);
            printRemoveListener(c, "SWT.MenuDetect");
            c.removeListener(35, compositeListener);
            printRemoveListener(c, "SWT.MouseDown");
            c.removeListener(3, compositeListener);
            printRemoveListener(c, "SWT.MouseDoubleClick");
            c.removeListener(8, compositeListener);
        }
    }

    void notifySelectionListeners(Event event)
    {
        if(!(event.widget instanceof Control))
            return;
        if(getDecorationRectangle((Control)event.widget).contains(event.x, event.y))
        {
            SelectionEvent clientEvent = new SelectionEvent(event);
            clientEvent.data = this;
            if(getImage() != null)
            {
                clientEvent.height = getImage().getBounds().height;
                clientEvent.width = getImage().getBounds().width;
            }
            switch(event.type)
            {
            default:
                break;

            case 8: // '\b'
                if(event.button == 1)
                {
                    Object listeners[] = selectionListeners.getListeners();
                    for(int i = 0; i < listeners.length; i++)
                        ((SelectionListener)listeners[i]).widgetDefaultSelected(clientEvent);

                }
                break;

            case 3: // '\003'
                if(event.button != 1)
                    break;
                Object listeners[] = selectionListeners.getListeners();
                for(int i = 0; i < listeners.length; i++)
                    ((SelectionListener)listeners[i]).widgetSelected(clientEvent);

                break;
            }
        }
    }

    void notifyMenuDetectListeners(Event event)
    {
        if(getDecorationRectangle(null).contains(event.x, event.y))
        {
            MenuDetectEvent clientEvent = new MenuDetectEvent(event);
            clientEvent.data = this;
            Object listeners[] = menuDetectListeners.getListeners();
            for(int i = 0; i < listeners.length; i++)
                ((MenuDetectListener)listeners[i]).menuDetected(clientEvent);

        }
    }

    public void showHoverText(String text)
    {
        if(control == null)
        {
            return;
        } else
        {
            showHoverText(text, control);
            return;
        }
    }

    public void hideHover()
    {
        if(hover != null)
            hover.setVisible(false);
    }

    public void show()
    {
        if(!visible)
        {
            visible = true;
            update();
        }
    }

    public void hide()
    {
        if(visible)
        {
            visible = false;
            hideHover();
            update();
        }
    }

    public String getDescriptionText()
    {
        return descriptionText;
    }

    public void setDescriptionText(String text)
    {
        descriptionText = text;
        update();
    }

    public Image getImage()
    {
        return image;
    }

    public void setImage(Image image)
    {
        this.image = image;
        update();
    }

    public boolean getShowOnlyOnFocus()
    {
        return showOnlyOnFocus;
    }

    public void setShowOnlyOnFocus(boolean showOnlyOnFocus)
    {
        this.showOnlyOnFocus = showOnlyOnFocus;
        update();
    }

    public boolean getShowHover()
    {
        return showHover;
    }

    public void setShowHover(boolean showHover)
    {
        this.showHover = showHover;
        update();
    }

    public int getMarginWidth()
    {
        return marginWidth;
    }

    public void setMarginWidth(int marginWidth)
    {
        this.marginWidth = marginWidth;
        update();
    }

    protected void update()
    {
        if(control == null || control.isDisposed())
            return;
        Rectangle rect = getDecorationRectangle(control.getShell());
        control.getShell().redraw(rect.x, rect.y, rect.width, rect.height, true);
        control.getShell().update();
        if(hover != null && getDescriptionText() != null)
            hover.setText(getDescriptionText(), getDecorationRectangle(control.getParent()), control);
    }

    private void showHoverText(String text, Control hoverNear)
    {
        if(!showHover)
            return;
        if(!visible)
            return;
        if(text == null)
        {
            hideHover();
            return;
        }
        if(control == null)
            return;
        if(hover == null)
            hover = new Hover(hoverNear.getShell());
        hover.setText(text, getDecorationRectangle(control.getParent()), control);
        hover.setVisible(true);
    }

    private void removeControlListeners()
    {
        if(control == null)
            return;
        printRemoveListener(control, "FOCUS");
        control.removeFocusListener(focusListener);
        focusListener = null;
        printRemoveListener(control, "DISPOSE");
        control.removeDisposeListener(disposeListener);
        disposeListener = null;
        for(Composite c = control.getParent(); c != null;)
        {
            removeCompositeListeners(c);
            if(composite != null && composite == c)
                c = null;
            else
            if(c instanceof Shell)
                c = null;
            else
                c = c.getParent();
        }

        paintListener = null;
        mouseTrackListener = null;
        compositeListener = null;
        if(moveListeningTarget != null)
        {
            printRemoveListener(moveListeningTarget, "MOUSEMOVE");
            moveListeningTarget.removeMouseMoveListener(mouseMoveListener);
            moveListeningTarget = null;
            mouseMoveListener = null;
        }
        if(DEBUG)
            if(listenerInstalls > 0)
                System.out.println("LISTENER LEAK>>>CHECK TRACE ABOVE");
            else
            if(listenerInstalls < 0)
                System.out.println("REMOVED UNREGISTERED LISTENERS>>>CHECK TRACE ABOVE");
            else
                System.out.println("ALL INSTALLED LISTENERS WERE REMOVED.");
    }

    protected Rectangle getDecorationRectangle(Control targetControl)
    {
        if(getImage() == null || control == null)
            return new Rectangle(0, 0, 0, 0);
        Rectangle imageBounds = getImage().getBounds();
        Rectangle controlBounds = control.getBounds();
        int x;
        if((position & 0x20000) == 0x20000)
            x = controlBounds.x + controlBounds.width + marginWidth;
        else
            x = controlBounds.x - imageBounds.width - marginWidth;
        int y;
        if((position & 0x80) == 128)
            y = controlBounds.y;
        else
        if((position & 0x400) == 1024)
            y = (controlBounds.y + control.getBounds().height) - imageBounds.height;
        else
            y = controlBounds.y + (control.getBounds().height - imageBounds.height) / 2;
        Point globalPoint = control.getParent().toDisplay(x, y);
        Point targetPoint;
        if(targetControl == null)
            targetPoint = globalPoint;
        else
            targetPoint = targetControl.toControl(globalPoint);
        return new Rectangle(targetPoint.x, targetPoint.y, imageBounds.width, imageBounds.height);
    }

    boolean shouldShowDecoration()
    {
        if(!visible)
            return false;
        if(control == null || control.isDisposed() || getImage() == null)
            return false;
        if(!control.isVisible())
            return false;
        if(showOnlyOnFocus)
            return hasFocus;
        else
            return true;
    }

    void printAddListener(Widget widget, String listenerType)
    {
        listenerInstalls++;
        if(DEBUG)
            System.out.println((new StringBuilder("Added listener>>>")).append(listenerType).append(" to>>>").append(widget).toString());
    }

    void printRemoveListener(Widget widget, String listenerType)
    {
        listenerInstalls--;
        if(DEBUG)
            System.out.println((new StringBuilder("Removed listener>>>")).append(listenerType).append(" from>>>").append(widget).toString());
    }

    private static boolean DEBUG = false;
    static boolean CARBON = "carbon".equals(SWT.getPlatform());
    Control control;
    private Composite composite;
    private Image image;
    private String descriptionText;
    private int position;
    boolean visible;
    boolean showOnlyOnFocus;
    boolean showHover;
    private int marginWidth;
    ListenerList selectionListeners;
    ListenerList menuDetectListeners;
    private FocusListener focusListener;
    private DisposeListener disposeListener;
    private PaintListener paintListener;
    private MouseTrackListener mouseTrackListener;
    MouseMoveListener mouseMoveListener;
    private Listener compositeListener;
    Control moveListeningTarget;
    private int listenerInstalls;
    Rectangle decorationRectangle;
    boolean hasFocus;
    private Hover hover;

}
