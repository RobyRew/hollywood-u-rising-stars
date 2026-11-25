.class Lcom/applovin/adview/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/a/a/ak;

.field final synthetic b:Lcom/applovin/adview/AppLovinInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/applovin/adview/AppLovinInterstitialActivity;Lcom/applovin/a/a/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/adview/o;->b:Lcom/applovin/adview/AppLovinInterstitialActivity;

    iput-object p2, p0, Lcom/applovin/adview/o;->a:Lcom/applovin/a/a/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/adview/o;->a:Lcom/applovin/a/a/ak;

    iget-object v1, p0, Lcom/applovin/adview/o;->b:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->o(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/a/a/ak;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/o;->b:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->w(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/adview/o;->a:Lcom/applovin/a/a/ak;

    iget-object v1, p0, Lcom/applovin/adview/o;->b:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->p(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/a/a/ak;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/o;->b:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->x(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    goto :goto_0
.end method
