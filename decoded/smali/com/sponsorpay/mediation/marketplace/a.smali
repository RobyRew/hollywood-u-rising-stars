.class public Lcom/sponsorpay/mediation/marketplace/a;
.super Lcom/sponsorpay/mediation/SPMediationAdapter;
.source "SourceFile"


# instance fields
.field private a:Lcom/sponsorpay/publisher/interstitial/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sponsorpay/mediation/SPMediationAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getInterstitialMediationAdapter()Lcom/sponsorpay/publisher/interstitial/b/a;
    .locals 1

    .prologue
    .line 18
    .line 1047
    iget-object v0, p0, Lcom/sponsorpay/mediation/marketplace/a;->a:Lcom/sponsorpay/publisher/interstitial/a/a;

    .line 18
    return-object v0
.end method

.method protected getListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "Fyber"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/sponsorpay/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoMediationAdapter()Lcom/sponsorpay/publisher/mbe/mediation/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sponsorpay/publisher/mbe/mediation/a",
            "<+",
            "Lcom/sponsorpay/mediation/SPMediationAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public startAdapter(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/sponsorpay/publisher/interstitial/a/a;

    invoke-direct {v0, p0}, Lcom/sponsorpay/publisher/interstitial/a/a;-><init>(Lcom/sponsorpay/mediation/marketplace/a;)V

    iput-object v0, p0, Lcom/sponsorpay/mediation/marketplace/a;->a:Lcom/sponsorpay/publisher/interstitial/a/a;

    .line 27
    const/4 v0, 0x1

    return v0
.end method
