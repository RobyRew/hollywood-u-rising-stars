.class public Lcom/pixelberrystudios/darthkitty/DKAppLovin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/c/b;
.implements Lcom/applovin/c/c;
.implements Lcom/applovin/c/d;


# static fields
.field private static a:Lcom/pixelberrystudios/darthkitty/DKAppLovin;


# instance fields
.field private b:Landroid/app/Activity;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method protected static native DKAppLovinOnAdClicked()V
.end method

.method protected static native DKAppLovinOnAdDisplayed()V
.end method

.method protected static native DKAppLovinOnAdHidden()V
.end method

.method protected static native DKAppLovinOnAdReceived()V
.end method

.method protected static native DKAppLovinOnFailedToReceiveAd()V
.end method

.method public static getInstance()Lcom/pixelberrystudios/darthkitty/DKAppLovin;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAppLovin;->a:Lcom/pixelberrystudios/darthkitty/DKAppLovin;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/pixelberrystudios/darthkitty/DKAppLovin;

    invoke-direct {v0}, Lcom/pixelberrystudios/darthkitty/DKAppLovin;-><init>()V

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKAppLovin;->a:Lcom/pixelberrystudios/darthkitty/DKAppLovin;

    .line 28
    :cond_0
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAppLovin;->a:Lcom/pixelberrystudios/darthkitty/DKAppLovin;

    return-object v0
.end method


# virtual methods
.method public adClicked(Lcom/applovin/c/a;)V
    .locals 0

    .prologue
    .line 73
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKAppLovin;->DKAppLovinOnAdClicked()V

    .line 74
    return-void
.end method

.method public adDisplayed(Lcom/applovin/c/a;)V
    .locals 0

    .prologue
    .line 63
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKAppLovin;->DKAppLovinOnAdDisplayed()V

    .line 64
    return-void
.end method

.method public adHidden(Lcom/applovin/c/a;)V
    .locals 0

    .prologue
    .line 68
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKAppLovin;->DKAppLovinOnAdHidden()V

    .line 69
    return-void
.end method

.method public adReceived(Lcom/applovin/c/a;)V
    .locals 0

    .prologue
    .line 53
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKAppLovin;->DKAppLovinOnAdReceived()V

    .line 54
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 0

    .prologue
    .line 58
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKAppLovin;->DKAppLovinOnFailedToReceiveAd()V

    .line 59
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/DKAppLovin;->b:Landroid/app/Activity;

    .line 37
    return-void
.end method

.method public showInterstitial()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/DKAppLovin;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/c/n;->b(Landroid/content/Context;)Lcom/applovin/c/n;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/pixelberrystudios/darthkitty/DKAppLovin;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/applovin/adview/d;->a(Lcom/applovin/c/n;Landroid/app/Activity;)Lcom/applovin/adview/e;

    move-result-object v0

    .line 45
    invoke-interface {v0, p0}, Lcom/applovin/adview/e;->a(Lcom/applovin/c/d;)V

    .line 46
    invoke-interface {v0, p0}, Lcom/applovin/adview/e;->a(Lcom/applovin/c/c;)V

    .line 47
    invoke-interface {v0}, Lcom/applovin/adview/e;->a()V

    .line 49
    return-void
.end method
