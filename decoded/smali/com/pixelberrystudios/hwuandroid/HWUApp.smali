.class public Lcom/pixelberrystudios/hwuandroid/HWUApp;
.super Lcom/leanplum/LeanplumApplication;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/leanplum/LeanplumApplication;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/leanplum/LeanplumApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 14
    invoke-static {p0}, Landroid/support/multidex/a;->a(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 19
    invoke-super {p0}, Lcom/leanplum/LeanplumApplication;->onCreate()V

    .line 24
    const-string/jumbo v0, "Lq5tfYZnr7XYs6RV2Sql82YZGXlaE1CIWPXvQiFcFuA"

    const-string/jumbo v1, "0xIgPeiigQiG0yQNvM6saHvgv8TzOUTkRsgEXGzFEt0"

    invoke-static {v0, v1}, Lcom/leanplum/Leanplum;->setAppIdForProductionMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string/jumbo v0, "44059457771"

    invoke-static {v0}, Lcom/leanplum/LeanplumPushService;->setGcmSenderId(Ljava/lang/String;)V

    .line 30
    return-void
.end method
