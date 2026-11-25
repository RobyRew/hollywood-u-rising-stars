.class public Lcom/pixelberrystudios/hssandroid/HSSBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/sponsorpay/advertiser/InstallReferrerReceiver;

    invoke-direct {v0}, Lcom/sponsorpay/advertiser/InstallReferrerReceiver;-><init>()V

    .line 18
    invoke-virtual {v0, p1, p2}, Lcom/sponsorpay/advertiser/InstallReferrerReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 21
    new-instance v0, Lcom/growmobile/GrowMobileInstallReceiver;

    invoke-direct {v0}, Lcom/growmobile/GrowMobileInstallReceiver;-><init>()V

    .line 23
    invoke-virtual {v0, p1, p2}, Lcom/growmobile/GrowMobileInstallReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 26
    new-instance v0, Lcom/adjust/sdk/ReferrerReceiver;

    invoke-direct {v0}, Lcom/adjust/sdk/ReferrerReceiver;-><init>()V

    .line 28
    invoke-virtual {v0, p1, p2}, Lcom/adjust/sdk/ReferrerReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 29
    return-void
.end method
