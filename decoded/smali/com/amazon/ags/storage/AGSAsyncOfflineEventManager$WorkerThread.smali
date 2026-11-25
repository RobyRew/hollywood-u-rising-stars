.class Lcom/amazon/ags/storage/AGSAsyncOfflineEventManager$WorkerThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/storage/AGSAsyncOfflineEventManager;


# direct methods
.method private constructor <init>(Lcom/amazon/ags/storage/AGSAsyncOfflineEventManager;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/amazon/ags/storage/AGSAsyncOfflineEventManager$WorkerThread;->this$0:Lcom/amazon/ags/storage/AGSAsyncOfflineEventManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/ags/storage/AGSAsyncOfflineEventManager;Lcom/amazon/ags/storage/AGSAsyncOfflineEventManager$1;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/amazon/ags/storage/AGSAsyncOfflineEventManager$WorkerThread;-><init>(Lcom/amazon/ags/storage/AGSAsyncOfflineEventManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 83
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/ags/storage/AGSAsyncOfflineEventManager$WorkerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/ags/storage/AGSAsyncOfflineEventManager$WorkerThread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    :try_start_0
    invoke-static {}, Lcom/amazon/ags/storage/AGSAsyncOfflineEventManager;->access$100()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amazon/ags/storage/AGSAsyncOfflineEventManager$WorkerThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    iget-object v0, p0, Lcom/amazon/ags/storage/AGSAsyncOfflineEventManager$WorkerThread;->this$0:Lcom/amazon/ags/storage/AGSAsyncOfflineEventManager;

    invoke-static {v0}, Lcom/amazon/ags/storage/AGSAsyncOfflineEventManager;->access$200(Lcom/amazon/ags/storage/AGSAsyncOfflineEventManager;)V

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 88
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 95
    :cond_0
    const-string/jumbo v0, "AGSWorkerThread"

    const-string/jumbo v1, "Worker thread died."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method
