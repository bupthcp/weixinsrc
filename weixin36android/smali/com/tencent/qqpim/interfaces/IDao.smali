.class public interface abstract Lcom/tencent/qqpim/interfaces/IDao;
.super Ljava/lang/Object;


# virtual methods
.method public abstract add(Lcom/tencent/qqpim/interfaces/IEntity;)Ljava/lang/String;
.end method

.method public abstract add(Ljava/util/ArrayList;Ljava/util/ArrayList;[I)Z
.end method

.method public abstract delete(Ljava/lang/String;)Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;
.end method

.method public abstract getAllEntityId([Ljava/lang/String;)Ljava/util/List;
.end method

.method public abstract isExisted(Ljava/lang/String;)Z
.end method

.method public abstract query(Ljava/lang/String;)Lcom/tencent/qqpim/interfaces/IEntity;
.end method

.method public abstract query()Ljava/util/List;
.end method

.method public abstract queryNameById(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract queryNumber()I
.end method

.method public abstract update(Lcom/tencent/qqpim/interfaces/IEntity;)Lcom/tencent/qqpim/interfaces/IDao$ENUM_IDaoReturnValue;
.end method
