// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   QueueRequestor.java

package javax.jms;


// Referenced classes of package javax.jms:
//            JMSException, Message, QueueReceiver, QueueSender, 
//            QueueSession, TemporaryQueue, Queue

public class QueueRequestor
{

    public QueueRequestor(QueueSession session, Queue queue)
        throws JMSException
    {
        this.session = session;
        this.queue = queue;
        tempQueue = session.createTemporaryQueue();
        sender = session.createSender(queue);
        receiver = session.createReceiver(tempQueue);
    }

    public Message request(Message message)
        throws JMSException
    {
        message.setJMSReplyTo(tempQueue);
        sender.send(message);
        return receiver.receive();
    }

    public void close()
        throws JMSException
    {
        session.close();
        tempQueue.delete();
    }

    QueueSession session;
    Queue queue;
    TemporaryQueue tempQueue;
    QueueSender sender;
    QueueReceiver receiver;
}
