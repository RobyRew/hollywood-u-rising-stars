.class public Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GC_Whispersync"


# instance fields
.field private final uiThreadHandler:Landroid/os/Handler;

.field private whispersyncEventListener:Lcom/amazon/ags/api/whispersync/WhispersyncEventListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;->uiThreadHandler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;)Lcom/amazon/ags/api/whispersync/WhispersyncEventListener;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;->whispersyncEventListener:Lcom/amazon/ags/api/whispersync/WhispersyncEventListener;

    return-object v0
.end method


# virtual methods
.method public postEvent(Lcom/amazon/ags/client/whispersync/WhispersyncEvent;)V
    .locals 3

    .prologue
    .line 36
    const-string/jumbo v0, "GC_Whispersync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "posting event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;->whispersyncEventListener:Lcom/amazon/ags/api/whispersync/WhispersyncEventListener;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;->uiThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster$1;-><init>(Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;Lcom/amazon/ags/client/whispersync/WhispersyncEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    :cond_0
    return-void
.end method

.method public setWhispersyncEventListener(Lcom/amazon/ags/api/whispersync/WhispersyncEventListener;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;->whispersyncEventListener:Lcom/amazon/ags/api/whispersync/WhispersyncEventListener;

    .line 33
    return-void
.end method
