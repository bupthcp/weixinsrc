// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import com.tencent.mm.ui.chatting.SpanUtil;

public class MMEditText extends EditText
{

    public MMEditText(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = "";
        b = false;
        c = 0;
        d = 0;
        e = 0;
        g = new _cls1();
    }

    public MMEditText(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = "";
        b = false;
        c = 0;
        d = 0;
        e = 0;
        g = new _cls1();
    }

    static int a(MMEditText mmedittext, int i)
    {
        mmedittext.c = i;
        return i;
    }

    static String a(MMEditText mmedittext, String s)
    {
        mmedittext.a = s;
        return s;
    }

    static int b(MMEditText mmedittext, int i)
    {
        mmedittext.d = i;
        return i;
    }

    public final InputConnection a()
    {
        return f;
    }

    public final void a(String s)
    {
        int i = getSelectionStart();
        int j = getSelectionEnd();
        StringBuffer stringbuffer = new StringBuffer(getText());
        setText((new StringBuilder()).append(stringbuffer.substring(0, i)).append(s).append(stringbuffer.substring(j, stringbuffer.length())).toString());
        b = true;
        setText(SpanUtil.b(this));
        setSelection(i + s.length());
    }

    public InputConnection onCreateInputConnection(EditorInfo editorinfo)
    {
        f = super.onCreateInputConnection(editorinfo);
        return f;
    }

    public boolean onTextContextMenuItem(int i)
    {
        boolean flag = super.onTextContextMenuItem(i);
        if(i == 0x1020022)
        {
            int j = getSelectionStart();
            b = true;
            setText(SpanUtil.b(this));
            setSelection(j);
        }
        return flag;
    }

    private String a;
    private boolean b;
    private int c;
    private int d;
    private int e;
    private InputConnection f;
    private TextWatcher g;

    private class _cls1
        implements TextWatcher
    {

        public void afterTextChanged(Editable editable)
        {
        }

        public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
        {
            MMEditText.a(a, a.getSelectionStart());
            MMEditText.b(a, charsequence.length());
            MMEditText.a(a, a.getText().toString());
        }

        public void onTextChanged(CharSequence charsequence, int i, int j, int k)
        {
        }

        private MMEditText a;

        _cls1()
        {
            a = MMEditText.this;
            super();
        }
    }

}
