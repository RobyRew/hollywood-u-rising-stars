.class public Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;
.super Lcom/sponsorpay/publisher/interstitial/b/a;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/c/b;
.implements Lcom/applovin/c/c;
.implements Lcom/applovin/c/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sponsorpay/publisher/interstitial/b/a",
        "<",
        "Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;",
        ">;",
        "Lcom/applovin/c/b;",
        "Lcom/applovin/c/c;",
        "Lcom/applovin/c/d;"
    }
.end annotation


# instance fields
.field private mAppLovinAd:Lcom/applovin/c/a;

.field private mAppLovinSdk:Lcom/applovin/c/n;

.field private mInterstitialDialog:Lcom/applovin/adview/e;


# direct methods
.method public constructor <init>(Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sponsorpay/publisher/interstitial/b/a;-><init>(Lcom/sponsorpay/mediation/SPMediationAdapter;)V

    .line 33
    invoke-static {p2}, Lcom/applovin/c/n;->b(Landroid/content/Context;)Lcom/applovin/c/n;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->mAppLovinSdk:Lcom/applovin/c/n;

    .line 34
    iget-object v0, p0, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->mAppLovinSdk:Lcom/applovin/c/n;

    invoke-virtual {v0}, Lcom/applovin/c/n;->d()Lcom/applovin/c/f;

    move-result-object v0

    sget-object v1, Lcom/applovin/c/g;->c:Lcom/applovin/c/g;

    invoke-interface {v0, v1, p0}, Lcom/applovin/c/f;->a(Lcom/applovin/c/g;Lcom/applovin/c/d;)V

    .line 35
    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/c/a;)V
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->fireClickEvent()V

    .line 93
    iget-object v0, p0, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->mInterstitialDialog:Lcom/applovin/adview/e;

    invoke-interface {v0}, Lcom/applovin/adview/e;->c()V

    .line 94
    return-void
.end method

.method public adDisplayed(Lcom/applovin/c/a;)V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->fireImpressionEvent()V

    .line 81
    return-void
.end method

.method public adHidden(Lcom/applovin/c/a;)V
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->fireCloseEvent()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->mInterstitialDialog:Lcom/applovin/adview/e;

    .line 87
    return-void
.end method

.method public adReceived(Lcom/applovin/c/a;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->mAppLovinAd:Lcom/applovin/c/a;

    .line 66
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->setAdAvailable()V

    .line 67
    return-void
.end method

.method protected checkForAds(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->mAppLovinSdk:Lcom/applovin/c/n;

    invoke-virtual {v0}, Lcom/applovin/c/n;->d()Lcom/applovin/c/f;

    move-result-object v0

    sget-object v1, Lcom/applovin/c/g;->c:Lcom/applovin/c/g;

    invoke-interface {v0, v1, p0}, Lcom/applovin/c/f;->a(Lcom/applovin/c/g;Lcom/applovin/c/d;)V

    .line 60
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->mAppLovinAd:Lcom/applovin/c/a;

    .line 72
    const/16 v0, 0xcc

    if-eq p1, v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Applovin failedToReceiveAd with errorCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->fireValidationErrorEvent(Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method

.method public show(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 39
    iget-object v1, p0, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->mAppLovinAd:Lcom/applovin/c/a;

    if-nez v1, :cond_0

    .line 40
    const-string/jumbo v1, "Internal adapter error - the Applovin interstitial ad was null"

    invoke-virtual {p0, v1}, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->fireShowErrorEvent(Ljava/lang/String;)V

    .line 54
    :goto_0
    return v0

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->mAppLovinSdk:Lcom/applovin/c/n;

    invoke-static {v1, p1}, Lcom/applovin/adview/d;->a(Lcom/applovin/c/n;Landroid/app/Activity;)Lcom/applovin/adview/e;

    move-result-object v1

    iput-object v1, p0, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->mInterstitialDialog:Lcom/applovin/adview/e;

    .line 45
    iget-object v1, p0, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->mInterstitialDialog:Lcom/applovin/adview/e;

    invoke-interface {v1, p0}, Lcom/applovin/adview/e;->a(Lcom/applovin/c/c;)V

    .line 46
    iget-object v1, p0, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->mInterstitialDialog:Lcom/applovin/adview/e;

    invoke-interface {v1, p0}, Lcom/applovin/adview/e;->a(Lcom/applovin/c/b;)V

    .line 48
    iget-object v1, p0, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->mInterstitialDialog:Lcom/applovin/adview/e;

    invoke-interface {v1}, Lcom/applovin/adview/e;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    const-string/jumbo v1, "The Applovin interstitial ad is not ready to display yet"

    invoke-virtual {p0, v1}, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->fireShowErrorEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->mInterstitialDialog:Lcom/applovin/adview/e;

    iget-object v1, p0, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->mAppLovinAd:Lcom/applovin/c/a;

    invoke-interface {v0, v1}, Lcom/applovin/adview/e;->a(Lcom/applovin/c/a;)V

    .line 54
    const/4 v0, 0x1

    goto :goto_0
.end method
