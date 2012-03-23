.class public Lcom/tencent/mm/storagebase/MCursor;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/database/Cursor;


# instance fields
.field private final a:Landroid/database/Cursor;

.field private final b:Landroid/database/Cursor;

.field private c:Landroid/database/Cursor;


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 0

    return-void
.end method

.method public deactivate()V
    .locals 0

    return-void
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method

.method public getBlob(I)[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/storagebase/MCursor;->b:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFloat(I)F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInt(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getShort(I)S
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAfterLast()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->c:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/tencent/mm/storagebase/MCursor;->b:Landroid/database/Cursor;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->c:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/tencent/mm/storagebase/MCursor;->a:Landroid/database/Cursor;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBeforeFirst()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->c:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/tencent/mm/storagebase/MCursor;->a:Landroid/database/Cursor;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->c:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/tencent/mm/storagebase/MCursor;->b:Landroid/database/Cursor;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFirst()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLast()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNull(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public move(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->b:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->c:Landroid/database/Cursor;

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->a:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->c:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public moveToLast()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->a:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->c:Landroid/database/Cursor;

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->b:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->c:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public moveToNext()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->c:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/tencent/mm/storagebase/MCursor;->a:Landroid/database/Cursor;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->b:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->c:Landroid/database/Cursor;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    goto :goto_0
.end method

.method public moveToPosition(I)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->a:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->c:Landroid/database/Cursor;

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/storagebase/MCursor;->b:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->b:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/tencent/mm/storagebase/MCursor;->a:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->b:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/tencent/mm/storagebase/MCursor;->c:Landroid/database/Cursor;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public moveToPrevious()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 0

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    return-void
.end method

.method public requery()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 0

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    return-void
.end method
