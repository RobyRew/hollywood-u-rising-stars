.class public interface abstract Lcom/amazon/ags/storage/OfflineEventManager;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getNextEvent()Lcom/amazon/ags/storage/OfflineEventManager$OfflineEventTuple;
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract processOfflineEvent(Lcom/amazon/ags/storage/OfflineEventManager$OfflineEventTuple;)V
.end method

.method public abstract removeEvent(Lcom/amazon/ags/storage/OfflineEventId;)V
.end method

.method public abstract removeNextEvent()V
.end method

.method public abstract submitEvent(Lcom/amazon/ags/storage/OfflineEvent;)Lcom/amazon/ags/storage/OfflineEventId;
.end method
