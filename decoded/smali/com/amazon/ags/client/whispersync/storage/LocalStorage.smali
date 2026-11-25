.class public interface abstract Lcom/amazon/ags/client/whispersync/storage/LocalStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getVersionId()Ljava/lang/String;
.end method

.method public abstract hasSuccessfullySynchronized()Z
.end method

.method public abstract putVersionId(Ljava/lang/String;)V
.end method

.method public abstract retrieve()Lcom/amazon/ags/client/whispersync/InternalGameDataMap;
.end method

.method public abstract save(Lcom/amazon/ags/client/whispersync/InternalGameDataMap;)I
.end method
