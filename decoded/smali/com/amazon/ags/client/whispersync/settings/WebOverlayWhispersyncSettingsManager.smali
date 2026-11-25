.class public Lcom/amazon/ags/client/whispersync/settings/WebOverlayWhispersyncSettingsManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/ags/client/whispersync/settings/WhispersyncUserSettingsManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "GC_Whispersync"

.field private static final WEB_OVERLAY_CALL_TIMEOUT_SECONDS:J = 0x1L


# instance fields
.field private isWhispersyncEnabled:Lcom/amazon/ags/client/whispersync/settings/WhispersyncUserSettingsManager$YesNoMaybe;

.field private final sessionClient:Lcom/amazon/ags/client/session/SessionClient;


# direct methods
.method public constructor <init>(Lcom/amazon/ags/client/session/SessionClient;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/amazon/ags/client/whispersync/settings/WhispersyncUserSettingsManager$YesNoMaybe;->MAYBE:Lcom/amazon/ags/client/whispersync/settings/WhispersyncUserSettingsManager$YesNoMaybe;

    iput-object v0, p0, Lcom/amazon/ags/client/whispersync/settings/WebOverlayWhispersyncSettingsManager;->isWhispersyncEnabled:Lcom/amazon/ags/client/whispersync/settings/WhispersyncUserSettingsManager$YesNoMaybe;

    .line 29
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/settings/WebOverlayWhispersyncSettingsManager;->sessionClient:Lcom/amazon/ags/client/session/SessionClient;

    .line 30
    return-void
.end method

.method static synthetic access$002(Lcom/amazon/ags/client/whispersync/settings/WebOverlayWhispersyncSettingsManager;Lcom/amazon/ags/client/whispersync/settings/WhispersyncUserSettingsManager$YesNoMaybe;)Lcom/amazon/ags/client/whispersync/settings/WhispersyncUserSettingsManager$YesNoMaybe;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/settings/WebOverlayWhispersyncSettingsManager;->isWhispersyncEnabled:Lcom/amazon/ags/client/whispersync/settings/WhispersyncUserSettingsManager$YesNoMaybe;

    return-object p1
.end method


# virtual methods
.method public isWhispersyncEnabled()Lcom/amazon/ags/client/whispersync/settings/WhispersyncUserSettingsManager$YesNoMaybe;
    .locals 4

    .prologue
    .line 34
    const-string/jumbo v0, "GC_Whispersync"

    const-string/jumbo v1, "Checking whether Whispersync is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/settings/WebOverlayWhispersyncSettingsManager;->sessionClient:Lcom/amazon/ags/client/session/SessionClient;

    invoke-virtual {v0}, Lcom/amazon/ags/client/session/SessionClient;->isWhispersyncEnabled()Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 39
    new-instance v2, Lcom/amazon/ags/client/whispersync/settings/WebOverlayWhispersyncSettingsManager$1;

    invoke-direct {v2, p0, v1}, Lcom/amazon/ags/client/whispersync/settings/WebOverlayWhispersyncSettingsManager$1;-><init>(Lcom/amazon/ags/client/whispersync/settings/WebOverlayWhispersyncSettingsManager;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v0, v2}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    .line 59
    const-wide/16 v2, 0x1

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 60
    if-nez v0, :cond_0

    .line 61
    const-string/jumbo v0, "GC_Whispersync"

    const-string/jumbo v1, "Timed-out determining whether Whispersync is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/settings/WebOverlayWhispersyncSettingsManager;->isWhispersyncEnabled:Lcom/amazon/ags/client/whispersync/settings/WhispersyncUserSettingsManager$YesNoMaybe;

    return-object v0

    .line 63
    :catch_0
    move-exception v0

    .line 65
    const-string/jumbo v1, "GC_Whispersync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Thread interrupted when waiting for Whispersync enabled state ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method
