.class public Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;
.super Lcom/sponsorpay/publisher/mbe/mediation/a;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/c/c;
.implements Lcom/applovin/c/e;
.implements Lcom/applovin/c/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sponsorpay/publisher/mbe/mediation/a",
        "<",
        "Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;",
        ">;",
        "Lcom/applovin/c/c;",
        "Lcom/applovin/c/e;",
        "Lcom/applovin/c/j;"
    }
.end annotation


# instance fields
.field private mFullyWatched:Z

.field private mIncentivizedAd:Lcom/applovin/adview/c;

.field private mRewardVerified:Z


# direct methods
.method public constructor <init>(Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1}, Lcom/sponsorpay/publisher/mbe/mediation/a;-><init>(Lcom/sponsorpay/mediation/SPMediationAdapter;)V

    .line 24
    iput-boolean v0, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mRewardVerified:Z

    .line 25
    iput-boolean v0, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mFullyWatched:Z

    .line 30
    invoke-static {p2}, Lcom/applovin/adview/c;->a(Landroid/content/Context;)Lcom/applovin/adview/c;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mIncentivizedAd:Lcom/applovin/adview/c;

    .line 31
    invoke-static {}, Lcom/sponsorpay/a;->a()Lcom/sponsorpay/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/a/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mIncentivizedAd:Lcom/applovin/adview/c;

    invoke-virtual {v1, v0}, Lcom/applovin/adview/c;->a(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mIncentivizedAd:Lcom/applovin/adview/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/adview/c;->a(Lcom/applovin/c/d;)V

    .line 34
    return-void
.end method


# virtual methods
.method public adDisplayed(Lcom/applovin/c/a;)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public adHidden(Lcom/applovin/c/a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-boolean v0, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mRewardVerified:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mFullyWatched:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->setVideoPlayed()V

    .line 116
    :cond_0
    iput-boolean v1, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mRewardVerified:Z

    .line 117
    iput-boolean v1, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mFullyWatched:Z

    .line 119
    iget-object v0, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mIncentivizedAd:Lcom/applovin/adview/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/adview/c;->a(Lcom/applovin/c/d;)V

    .line 120
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->notifyCloseEngagement()V

    .line 121
    return-void
.end method

.method public startVideo(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mIncentivizedAd:Lcom/applovin/adview/c;

    invoke-virtual {v0}, Lcom/applovin/adview/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mIncentivizedAd:Lcom/applovin/adview/c;

    invoke-virtual {v0, p1, p0, p0, p0}, Lcom/applovin/adview/c;->a(Landroid/app/Activity;Lcom/applovin/c/e;Lcom/applovin/c/j;Lcom/applovin/c/c;)V

    .line 51
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->notifyVideoStarted()V

    .line 53
    :cond_0
    return-void
.end method

.method public userDeclinedToViewAd(Lcom/applovin/c/a;)V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->notifyCloseEngagement()V

    .line 87
    return-void
.end method

.method public userOverQuota(Lcom/applovin/c/a;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mRewardVerified:Z

    .line 61
    return-void
.end method

.method public userRewardRejected(Lcom/applovin/c/a;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mRewardVerified:Z

    .line 69
    return-void
.end method

.method public userRewardVerified(Lcom/applovin/c/a;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mRewardVerified:Z

    .line 76
    return-void
.end method

.method public validationRequestFailed(Lcom/applovin/c/a;I)V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mRewardVerified:Z

    .line 82
    return-void
.end method

.method public videoPlaybackBegan(Lcom/applovin/c/a;)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public videoPlaybackEnded(Lcom/applovin/c/a;DZ)V
    .locals 0

    .prologue
    .line 99
    iput-boolean p4, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mFullyWatched:Z

    .line 100
    return-void
.end method

.method public videosAvailable(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    iget-object v0, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mIncentivizedAd:Lcom/applovin/adview/c;

    invoke-virtual {v0}, Lcom/applovin/adview/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sponsorpay/publisher/mbe/mediation/e;->g:Lcom/sponsorpay/publisher/mbe/mediation/e;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->sendValidationEvent(Lcom/sponsorpay/publisher/mbe/mediation/e;)V

    .line 42
    iput-boolean v1, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mRewardVerified:Z

    .line 43
    iput-boolean v1, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mFullyWatched:Z

    .line 44
    return-void

    .line 39
    :cond_0
    sget-object v0, Lcom/sponsorpay/publisher/mbe/mediation/e;->b:Lcom/sponsorpay/publisher/mbe/mediation/e;

    goto :goto_0
.end method
