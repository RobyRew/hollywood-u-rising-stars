.class Lcom/applovin/adview/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/c/b;


# instance fields
.field final synthetic a:Lcom/applovin/adview/AppLovinInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/adview/r;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/c/a;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/r;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->z(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/a/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/a/a/j;->h()Lcom/applovin/c/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/applovin/c/b;->adClicked(Lcom/applovin/c/a;)V

    :cond_0
    return-void
.end method
