.class public Lcom/adjust/sdk/ActivityHandler;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# static fields
.field private static final ADJUST_PREFIX:Ljava/lang/String; = "adjust_"

.field private static SESSION_INTERVAL:J = 0x0L

.field private static SUBSESSION_INTERVAL:J = 0x0L

.field private static TIMER_INTERVAL:J = 0x0L

.field private static final TIME_TRAVEL:Ljava/lang/String; = "Time travel!"

.field private static timer:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private activityState:Lcom/adjust/sdk/ActivityState;

.field private androidId:Ljava/lang/String;

.field private appToken:Ljava/lang/String;

.field private clientSdk:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private defaultTracker:Ljava/lang/String;

.field private dropOfflineActivities:Z

.field private enabled:Z

.field private environment:Ljava/lang/String;

.field private eventBuffering:Z

.field private fbAttributionId:Ljava/lang/String;

.field private final logger:Lcom/adjust/sdk/Logger;

.field private macSha1:Ljava/lang/String;

.field private macShortMd5:Ljava/lang/String;

.field private onFinishedListener:Lcom/adjust/sdk/OnFinishedListener;

.field private packageHandler:Lcom/adjust/sdk/IPackageHandler;

.field private final sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 78
    const-string/jumbo v0, "Adjust"

    invoke-direct {p0, v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 79
    invoke-virtual {p0, v2}, Lcom/adjust/sdk/ActivityHandler;->setDaemon(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->start()V

    .line 81
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getTimerInterval()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/ActivityHandler;->TIMER_INTERVAL:J

    .line 82
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getSessionInterval()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/ActivityHandler;->SESSION_INTERVAL:J

    .line 83
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getSubsessionInterval()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/ActivityHandler;->SUBSESSION_INTERVAL:J

    .line 84
    new-instance v0, Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;-><init>(Landroid/os/Looper;Lcom/adjust/sdk/ActivityHandler;)V

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    .line 85
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    .line 86
    const-string/jumbo v0, "android3.3.1"

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->clientSdk:Ljava/lang/String;

    .line 87
    iput-boolean v2, p0, Lcom/adjust/sdk/ActivityHandler;->enabled:Z

    .line 89
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    .line 91
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 92
    const v1, 0x11bb6

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 93
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 98
    const-string/jumbo v0, "Adjust"

    invoke-direct {p0, v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 99
    invoke-virtual {p0, v2}, Lcom/adjust/sdk/ActivityHandler;->setDaemon(Z)V

    .line 100
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->start()V

    .line 101
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getTimerInterval()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/ActivityHandler;->TIMER_INTERVAL:J

    .line 102
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getSessionInterval()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/ActivityHandler;->SESSION_INTERVAL:J

    .line 103
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getSubsessionInterval()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/ActivityHandler;->SUBSESSION_INTERVAL:J

    .line 104
    new-instance v0, Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;-><init>(Landroid/os/Looper;Lcom/adjust/sdk/ActivityHandler;)V

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    .line 105
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    .line 106
    const-string/jumbo v0, "android3.3.1"

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->clientSdk:Ljava/lang/String;

    .line 107
    iput-boolean v2, p0, Lcom/adjust/sdk/ActivityHandler;->enabled:Z

    .line 109
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    .line 111
    iput-object p2, p0, Lcom/adjust/sdk/ActivityHandler;->appToken:Ljava/lang/String;

    .line 112
    iput-object p3, p0, Lcom/adjust/sdk/ActivityHandler;->environment:Ljava/lang/String;

    .line 113
    iput-boolean p5, p0, Lcom/adjust/sdk/ActivityHandler;->eventBuffering:Z

    .line 114
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    invoke-interface {v0, p4}, Lcom/adjust/sdk/Logger;->setLogLevelString(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 117
    const v1, 0x11bb9

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 118
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/OnFinishedListener;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->onFinishedListener:Lcom/adjust/sdk/OnFinishedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adjust/sdk/ActivityHandler;Z)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->initInternal(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->startInternal()V

    return-void
.end method

.method static synthetic access$300(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->endInternal()V

    return-void
.end method

.method static synthetic access$400(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/PackageBuilder;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->trackEventInternal(Lcom/adjust/sdk/PackageBuilder;)V

    return-void
.end method

.method static synthetic access$500(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/PackageBuilder;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->trackRevenueInternal(Lcom/adjust/sdk/PackageBuilder;)V

    return-void
.end method

.method static synthetic access$600(Lcom/adjust/sdk/ActivityHandler;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->readOpenUrlInternal(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$700(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->timerFired()V

    return-void
.end method

.method private canInit()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->appToken:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkAppTokenNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->appToken:Ljava/lang/String;

    .line 291
    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkAppTokenLength(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    .line 292
    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    .line 293
    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 290
    :goto_0
    return v0

    .line 293
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canTrackEvent(Lcom/adjust/sdk/PackageBuilder;)Z
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->appToken:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkAppTokenNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    .line 476
    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkActivityState(Lcom/adjust/sdk/ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {p1}, Lcom/adjust/sdk/PackageBuilder;->isValidForEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 475
    :goto_0
    return v0

    .line 477
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canTrackRevenue(Lcom/adjust/sdk/PackageBuilder;)Z
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->appToken:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkAppTokenNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    .line 482
    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkActivityState(Lcom/adjust/sdk/ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {p1}, Lcom/adjust/sdk/PackageBuilder;->isValidForRevenue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 481
    :goto_0
    return v0

    .line 483
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkActivityState(Lcom/adjust/sdk/ActivityState;)Z
    .locals 2

    .prologue
    .line 726
    if-nez p1, :cond_0

    .line 727
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Missing activity state."

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;)V

    .line 728
    const/4 v0, 0x0

    .line 730
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkAppTokenLength(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 742
    const/16 v2, 0xc

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 743
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v3, "Malformed App Token \'%s\'"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;)V

    .line 746
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private checkAppTokenNotNull(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 734
    if-nez p1, :cond_0

    .line 735
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Missing App Token."

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;)V

    .line 736
    const/4 v0, 0x0

    .line 738
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkContext(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 713
    if-nez p1, :cond_0

    .line 714
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Missing context"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;)V

    .line 715
    const/4 v0, 0x0

    .line 717
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 721
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 722
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkPermissions(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 630
    const/4 v0, 0x1

    .line 632
    const-string/jumbo v1, "android.permission.INTERNET"

    invoke-static {p1, v1}, Lcom/adjust/sdk/ActivityHandler;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 633
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Missing permission: INTERNET"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;)V

    .line 634
    const/4 v0, 0x0

    .line 636
    :cond_0
    const-string/jumbo v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p1, v1}, Lcom/adjust/sdk/ActivityHandler;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 637
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v2, "Missing permission: ACCESS_WIFI_STATE"

    invoke-interface {v1, v2}, Lcom/adjust/sdk/Logger;->warn(Ljava/lang/String;)V

    .line 640
    :cond_1
    return v0
.end method

.method public static deleteActivityState(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 561
    const-string/jumbo v0, "AdjustIoActivityState"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private endInternal()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->appToken:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkAppTokenNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->pauseSending()V

    .line 367
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->stopTimer()V

    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->updateActivityState(J)V

    .line 369
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    goto :goto_0
.end method

.method private getApplicationBundle()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 701
    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 702
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 703
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 709
    :goto_0
    return-object v0

    .line 704
    :catch_0
    move-exception v0

    .line 705
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "ApplicationInfo not found"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;)V

    .line 709
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 706
    :catch_1
    move-exception v0

    .line 707
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v2, "Failed to get ApplicationBundle (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initInternal(Z)V
    .locals 3

    .prologue
    .line 264
    if-eqz p1, :cond_0

    .line 265
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->processApplicationBundle()V

    .line 271
    :goto_0
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->canInit()Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    :goto_1
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->environment:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->setEnvironment(Ljava/lang/String;)V

    .line 268
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler;->eventBuffering:Z

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->setEventBuffering(Z)V

    goto :goto_0

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adjust/sdk/Util;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 276
    const-string/jumbo v1, ":"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-static {v0}, Lcom/adjust/sdk/Util;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->macSha1:Ljava/lang/String;

    .line 279
    invoke-static {v1}, Lcom/adjust/sdk/Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->macShortMd5:Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adjust/sdk/Util;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->androidId:Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adjust/sdk/Util;->getAttributionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->fbAttributionId:Ljava/lang/String;

    .line 282
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adjust/sdk/Util;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->userAgent:Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/adjust/sdk/ActivityHandler;->dropOfflineActivities:Z

    invoke-static {p0, v0, v1}, Lcom/adjust/sdk/AdjustFactory;->getPackageHandler(Lcom/adjust/sdk/ActivityHandler;Landroid/content/Context;Z)Lcom/adjust/sdk/IPackageHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    .line 286
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->readActivityState()V

    goto :goto_1
.end method

.method private injectGeneralAttributes(Lcom/adjust/sdk/PackageBuilder;)V
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->appToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/PackageBuilder;->setAppToken(Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->macShortMd5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/PackageBuilder;->setMacShortMd5(Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->macSha1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/PackageBuilder;->setMacSha1(Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->androidId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/PackageBuilder;->setAndroidId(Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->fbAttributionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/PackageBuilder;->setFbAttributionId(Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->userAgent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/PackageBuilder;->setUserAgent(Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->clientSdk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/PackageBuilder;->setClientSdk(Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->environment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/PackageBuilder;->setEnvironment(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->defaultTracker:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/PackageBuilder;->setDefaultTracker(Ljava/lang/String;)V

    .line 584
    return-void
.end method

.method private injectReferrer(Lcom/adjust/sdk/PackageBuilder;)V
    .locals 5

    .prologue
    .line 588
    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 589
    const-string/jumbo v1, "AdjustInstallReferrer"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/PackageBuilder;->setReferrer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :goto_0
    return-void

    .line 591
    :catch_0
    move-exception v0

    .line 592
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v2, "Failed to inject referrer (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processApplicationBundle()V
    .locals 3

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->getApplicationBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 645
    if-nez v0, :cond_0

    .line 655
    :goto_0
    return-void

    .line 649
    :cond_0
    const-string/jumbo v1, "AdjustAppToken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->appToken:Ljava/lang/String;

    .line 650
    const-string/jumbo v1, "AdjustEnvironment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adjust/sdk/ActivityHandler;->setEnvironment(Ljava/lang/String;)V

    .line 651
    const-string/jumbo v1, "AdjustDefaultTracker"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adjust/sdk/ActivityHandler;->setDefaultTracker(Ljava/lang/String;)V

    .line 652
    const-string/jumbo v1, "AdjustEventBuffering"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/adjust/sdk/ActivityHandler;->setEventBuffering(Z)V

    .line 653
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v2, "AdjustLogLevel"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/adjust/sdk/Logger;->setLogLevelString(Ljava/lang/String;)V

    .line 654
    const-string/jumbo v1, "AdjustDropOfflineActivities"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->setDropOfflineActivities(Z)V

    goto :goto_0
.end method

.method private readActivityState()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 510
    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    const-string/jumbo v1, "AdjustIoActivityState"

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 511
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 512
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 515
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/ActivityState;

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    .line 516
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Read activity state: %s uuid:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v5, v5, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/OptionalDataException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 538
    :goto_0
    return-void

    .line 518
    :catch_0
    move-exception v0

    .line 519
    :try_start_3
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Failed to find activity state class"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 527
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 537
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    goto :goto_0

    .line 520
    :catch_1
    move-exception v0

    .line 527
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 530
    :catch_2
    move-exception v0

    .line 531
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Activity state file not found"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->verbose(Ljava/lang/String;)V

    goto :goto_1

    .line 522
    :catch_3
    move-exception v0

    .line 523
    :try_start_6
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Failed to read activity states object"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 527
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 532
    :catch_4
    move-exception v0

    .line 533
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v2, "Failed to open activity state file for reading (%s)"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 524
    :catch_5
    move-exception v0

    .line 525
    :try_start_8
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Failed to cast activity state object"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 527
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    throw v0
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
.end method

.method private readOpenUrlInternal(Landroid/net/Uri;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 432
    if-nez p1, :cond_1

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 437
    if-eqz v0, :cond_0

    .line 441
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 443
    const-string/jumbo v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 444
    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_4

    aget-object v5, v3, v0

    .line 445
    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 446
    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    .line 444
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 448
    :cond_3
    aget-object v6, v5, v1

    .line 449
    const-string/jumbo v7, "adjust_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 451
    aget-object v5, v5, v8

    .line 452
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    .line 454
    const-string/jumbo v7, "adjust_"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 455
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    .line 457
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 460
    :cond_4
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    new-instance v0, Lcom/adjust/sdk/PackageBuilder;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/adjust/sdk/PackageBuilder;-><init>(Landroid/content/Context;)V

    .line 465
    invoke-virtual {v0, v2}, Lcom/adjust/sdk/PackageBuilder;->setDeepLinkParameters(Ljava/util/Map;)V

    .line 466
    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->injectGeneralAttributes(Lcom/adjust/sdk/PackageBuilder;)V

    .line 467
    invoke-virtual {v0}, Lcom/adjust/sdk/PackageBuilder;->buildReattributionPackage()Lcom/adjust/sdk/ActivityPackage;

    move-result-object v0

    .line 468
    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v3, v0}, Lcom/adjust/sdk/IPackageHandler;->addPackage(Lcom/adjust/sdk/ActivityPackage;)V

    .line 469
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    .line 471
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v3, "Reattribution %s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private setDefaultTracker(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 685
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->defaultTracker:Ljava/lang/String;

    .line 686
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->defaultTracker:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Default tracker: \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->defaultTracker:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->info(Ljava/lang/String;)V

    .line 689
    :cond_0
    return-void
.end method

.method private setDropOfflineActivities(Z)V
    .locals 2

    .prologue
    .line 692
    iput-boolean p1, p0, Lcom/adjust/sdk/ActivityHandler;->dropOfflineActivities:Z

    .line 693
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler;->dropOfflineActivities:Z

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Offline activities will get dropped"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->info(Ljava/lang/String;)V

    .line 696
    :cond_0
    return-void
.end method

.method private setEnvironment(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 658
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->environment:Ljava/lang/String;

    .line 659
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->environment:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Missing environment"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->Assert(Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    sget-object v1, Lcom/adjust/sdk/Logger$LogLevel;->ASSERT:Lcom/adjust/sdk/Logger$LogLevel;

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->setLogLevel(Lcom/adjust/sdk/Logger$LogLevel;)V

    .line 662
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->environment:Ljava/lang/String;

    .line 675
    :goto_0
    return-void

    .line 663
    :cond_0
    const-string/jumbo v0, "sandbox"

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->environment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "SANDBOX: Adjust is running in Sandbox mode. Use this setting for testing. Don\'t forget to set the environment to `production` before publishing!"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->Assert(Ljava/lang/String;)V

    goto :goto_0

    .line 666
    :cond_1
    const-string/jumbo v0, "production"

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->environment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 667
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "PRODUCTION: Adjust is running in Production mode. Use this setting only for the build that you want to publish. Set the environment to `sandbox` if you want to test your app!"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->Assert(Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    sget-object v1, Lcom/adjust/sdk/Logger$LogLevel;->ASSERT:Lcom/adjust/sdk/Logger$LogLevel;

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->setLogLevel(Lcom/adjust/sdk/Logger$LogLevel;)V

    goto :goto_0

    .line 671
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Malformed environment \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->environment:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->Assert(Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    sget-object v1, Lcom/adjust/sdk/Logger$LogLevel;->ASSERT:Lcom/adjust/sdk/Logger$LogLevel;

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->setLogLevel(Lcom/adjust/sdk/Logger$LogLevel;)V

    .line 673
    const-string/jumbo v0, "malformed"

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->environment:Ljava/lang/String;

    goto :goto_0
.end method

.method private setEventBuffering(Z)V
    .locals 2

    .prologue
    .line 678
    iput-boolean p1, p0, Lcom/adjust/sdk/ActivityHandler;->eventBuffering:Z

    .line 679
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler;->eventBuffering:Z

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Event buffering is enabled"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->info(Ljava/lang/String;)V

    .line 682
    :cond_0
    return-void
.end method

.method private startInternal()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 297
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->appToken:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkAppTokenNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v0, v0, Lcom/adjust/sdk/ActivityState;->enabled:Ljava/lang/Boolean;

    .line 302
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->resumeSending()V

    .line 307
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->startTimer()V

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 312
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-nez v2, :cond_3

    .line 313
    new-instance v2, Lcom/adjust/sdk/ActivityState;

    invoke-direct {v2}, Lcom/adjust/sdk/ActivityState;-><init>()V

    iput-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    .line 314
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput v9, v2, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    .line 315
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-wide v0, v2, Lcom/adjust/sdk/ActivityState;->createdAt:J

    .line 317
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->transferSessionPackage()V

    .line 318
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-virtual {v2, v0, v1}, Lcom/adjust/sdk/ActivityState;->resetSessionAttributes(J)V

    .line 319
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-boolean v1, p0, Lcom/adjust/sdk/ActivityHandler;->enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/adjust/sdk/ActivityState;->enabled:Ljava/lang/Boolean;

    .line 320
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    .line 321
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "First session"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :cond_3
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v2, v2, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    sub-long v2, v0, v2

    .line 327
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 328
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v3, "Time travel!"

    invoke-interface {v2, v3}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;)V

    .line 329
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-wide v0, v2, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    .line 330
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    goto :goto_0

    .line 335
    :cond_4
    sget-wide v4, Lcom/adjust/sdk/ActivityHandler;->SESSION_INTERVAL:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_5

    .line 336
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v5, v4, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    .line 337
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-wide v0, v4, Lcom/adjust/sdk/ActivityState;->createdAt:J

    .line 338
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-wide v2, v4, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    .line 340
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->transferSessionPackage()V

    .line 341
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-virtual {v2, v0, v1}, Lcom/adjust/sdk/ActivityState;->resetSessionAttributes(J)V

    .line 342
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    .line 343
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "Session %d"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v4, v4, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    .line 344
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    .line 343
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 349
    :cond_5
    sget-wide v4, Lcom/adjust/sdk/ActivityHandler;->SUBSESSION_INTERVAL:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_6

    .line 350
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v5, v4, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    .line 351
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "Started subsession %d of session %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v8, v8, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    .line 353
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    iget-object v8, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v8, v8, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    .line 354
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    .line 351
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/adjust/sdk/Logger;->info(Ljava/lang/String;)V

    .line 356
    :cond_6
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v6, v4, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    add-long/2addr v2, v6

    iput-wide v2, v4, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    .line 357
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-wide v0, v2, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    .line 358
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    goto/16 :goto_0
.end method

.method private startTimer()V
    .locals 7

    .prologue
    .line 597
    sget-object v0, Lcom/adjust/sdk/ActivityHandler;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 598
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->stopTimer()V

    .line 600
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/adjust/sdk/ActivityHandler;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 601
    sget-object v0, Lcom/adjust/sdk/ActivityHandler;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$2;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/ActivityHandler$2;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    const-wide/16 v2, 0x3e8

    sget-wide v4, Lcom/adjust/sdk/ActivityHandler;->TIMER_INTERVAL:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 607
    return-void
.end method

.method private stopTimer()V
    .locals 2

    .prologue
    .line 611
    :try_start_0
    sget-object v0, Lcom/adjust/sdk/ActivityHandler;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :goto_0
    return-void

    .line 612
    :catch_0
    move-exception v0

    .line 613
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "No timer found"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private timerFired()V
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v0, v0, Lcom/adjust/sdk/ActivityState;->enabled:Ljava/lang/Boolean;

    .line 619
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    :goto_0
    return-void

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    .line 625
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->updateActivityState(J)V

    .line 626
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    goto :goto_0
.end method

.method private trackEventInternal(Lcom/adjust/sdk/PackageBuilder;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 373
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->canTrackEvent(Lcom/adjust/sdk/PackageBuilder;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v0, v0, Lcom/adjust/sdk/ActivityState;->enabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 382
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-wide v0, v2, Lcom/adjust/sdk/ActivityState;->createdAt:J

    .line 383
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v3, v2, Lcom/adjust/sdk/ActivityState;->eventCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/adjust/sdk/ActivityState;->eventCount:I

    .line 384
    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->updateActivityState(J)V

    .line 386
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->injectGeneralAttributes(Lcom/adjust/sdk/PackageBuilder;)V

    .line 387
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-virtual {v0, p1}, Lcom/adjust/sdk/ActivityState;->injectEventAttributes(Lcom/adjust/sdk/PackageBuilder;)V

    .line 388
    invoke-virtual {p1}, Lcom/adjust/sdk/PackageBuilder;->buildEventPackage()Lcom/adjust/sdk/ActivityPackage;

    move-result-object v0

    .line 389
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v1, v0}, Lcom/adjust/sdk/IPackageHandler;->addPackage(Lcom/adjust/sdk/ActivityPackage;)V

    .line 391
    iget-boolean v1, p0, Lcom/adjust/sdk/ActivityHandler;->eventBuffering:Z

    if-eqz v1, :cond_2

    .line 392
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v2, "Buffered event %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityPackage;->getSuffix()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/adjust/sdk/Logger;->info(Ljava/lang/String;)V

    .line 397
    :goto_1
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    .line 398
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "Event %d"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v4, v4, Lcom/adjust/sdk/ActivityState;->eventCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    goto :goto_1
.end method

.method private trackRevenueInternal(Lcom/adjust/sdk/PackageBuilder;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 402
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->canTrackRevenue(Lcom/adjust/sdk/PackageBuilder;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v0, v0, Lcom/adjust/sdk/ActivityState;->enabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 412
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-wide v0, v2, Lcom/adjust/sdk/ActivityState;->createdAt:J

    .line 413
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v3, v2, Lcom/adjust/sdk/ActivityState;->eventCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/adjust/sdk/ActivityState;->eventCount:I

    .line 414
    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->updateActivityState(J)V

    .line 416
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->injectGeneralAttributes(Lcom/adjust/sdk/PackageBuilder;)V

    .line 417
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-virtual {v0, p1}, Lcom/adjust/sdk/ActivityState;->injectEventAttributes(Lcom/adjust/sdk/PackageBuilder;)V

    .line 418
    invoke-virtual {p1}, Lcom/adjust/sdk/PackageBuilder;->buildRevenuePackage()Lcom/adjust/sdk/ActivityPackage;

    move-result-object v0

    .line 419
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v1, v0}, Lcom/adjust/sdk/IPackageHandler;->addPackage(Lcom/adjust/sdk/ActivityPackage;)V

    .line 421
    iget-boolean v1, p0, Lcom/adjust/sdk/ActivityHandler;->eventBuffering:Z

    if-eqz v1, :cond_2

    .line 422
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v2, "Buffered revenue %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityPackage;->getSuffix()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/adjust/sdk/Logger;->info(Ljava/lang/String;)V

    .line 427
    :goto_1
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    .line 428
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "Event %d (revenue)"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v4, v4, Lcom/adjust/sdk/ActivityState;->eventCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 424
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    goto :goto_1
.end method

.method private transferSessionPackage()V
    .locals 2

    .prologue
    .line 565
    new-instance v0, Lcom/adjust/sdk/PackageBuilder;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/adjust/sdk/PackageBuilder;-><init>(Landroid/content/Context;)V

    .line 566
    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->injectGeneralAttributes(Lcom/adjust/sdk/PackageBuilder;)V

    .line 567
    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->injectReferrer(Lcom/adjust/sdk/PackageBuilder;)V

    .line 568
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityState;->injectSessionAttributes(Lcom/adjust/sdk/PackageBuilder;)V

    .line 569
    invoke-virtual {v0}, Lcom/adjust/sdk/PackageBuilder;->buildSessionPackage()Lcom/adjust/sdk/ActivityPackage;

    move-result-object v0

    .line 570
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v1, v0}, Lcom/adjust/sdk/IPackageHandler;->addPackage(Lcom/adjust/sdk/ActivityPackage;)V

    .line 571
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    .line 572
    return-void
.end method

.method private updateActivityState(J)V
    .locals 7

    .prologue
    .line 487
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkActivityState(Lcom/adjust/sdk/ActivityState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v0, v0, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    sub-long v0, p1, v0

    .line 492
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 493
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Time travel!"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-wide p1, v0, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    goto :goto_0

    .line 499
    :cond_2
    sget-wide v2, Lcom/adjust/sdk/ActivityHandler;->SESSION_INTERVAL:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 503
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v4, v2, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    add-long/2addr v4, v0

    iput-wide v4, v2, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    .line 504
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v4, v2, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    add-long/2addr v0, v4

    iput-wide v0, v2, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    .line 505
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-wide p1, v0, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    goto :goto_0
.end method

.method private writeActivityState()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 542
    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    const-string/jumbo v1, "AdjustIoActivityState"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 543
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 544
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 547
    :try_start_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-virtual {v2, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 548
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Wrote activity state: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/NotSerializableException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 558
    :goto_0
    return-void

    .line 549
    :catch_0
    move-exception v0

    .line 550
    :try_start_3
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Failed to serialize activity state"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 552
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 555
    :catch_1
    move-exception v0

    .line 556
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string/jumbo v2, "Failed to open activity state for writing (%s)"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 552
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
.end method


# virtual methods
.method public finishedTrackingActivity(Lcom/adjust/sdk/ResponseData;)V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->onFinishedListener:Lcom/adjust/sdk/OnFinishedListener;

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 169
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 170
    new-instance v1, Lcom/adjust/sdk/ActivityHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$1;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/ResponseData;)V

    .line 179
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public isEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkActivityState(Lcom/adjust/sdk/ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v0, v0, Lcom/adjust/sdk/ActivityState;->enabled:Ljava/lang/Boolean;

    .line 197
    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler;->enabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public readOpenUrl(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 202
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 203
    const v1, 0x11be8

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 204
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 205
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 206
    return-void
.end method

.method public setEnabled(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler;->enabled:Z

    .line 184
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkActivityState(Lcom/adjust/sdk/ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-object p1, v0, Lcom/adjust/sdk/ActivityState;->enabled:Ljava/lang/Boolean;

    .line 186
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->trackSubsessionStart()V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->trackSubsessionEnd()V

    goto :goto_0
.end method

.method public setOnFinishedListener(Lcom/adjust/sdk/OnFinishedListener;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->onFinishedListener:Lcom/adjust/sdk/OnFinishedListener;

    .line 127
    return-void
.end method

.method public setSdkPrefix(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 122
    const-string/jumbo v0, "%s@%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->clientSdk:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->clientSdk:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Lcom/adjust/sdk/PackageBuilder;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/adjust/sdk/PackageBuilder;-><init>(Landroid/content/Context;)V

    .line 143
    invoke-virtual {v0, p1}, Lcom/adjust/sdk/PackageBuilder;->setEventToken(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0, p2}, Lcom/adjust/sdk/PackageBuilder;->setCallbackParameters(Ljava/util/Map;)V

    .line 146
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 147
    const v2, 0x11bd4

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 148
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 150
    return-void
.end method

.method public trackRevenue(DLjava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Lcom/adjust/sdk/PackageBuilder;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/adjust/sdk/PackageBuilder;-><init>(Landroid/content/Context;)V

    .line 154
    invoke-virtual {v0, p1, p2}, Lcom/adjust/sdk/PackageBuilder;->setAmountInCents(D)V

    .line 155
    invoke-virtual {v0, p3}, Lcom/adjust/sdk/PackageBuilder;->setEventToken(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0, p4}, Lcom/adjust/sdk/PackageBuilder;->setCallbackParameters(Ljava/util/Map;)V

    .line 158
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 159
    const v2, 0x11bde

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 160
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 162
    return-void
.end method

.method public trackSubsessionEnd()V
    .locals 2

    .prologue
    .line 136
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 137
    const v1, 0x11bca

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 138
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 139
    return-void
.end method

.method public trackSubsessionStart()V
    .locals 2

    .prologue
    .line 130
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 131
    const v1, 0x11bc0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 132
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 133
    return-void
.end method
