.class Lcom/applovin/adview/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/c/c;


# instance fields
.field final synthetic a:Lcom/applovin/adview/AppLovinInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/adview/q;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adDisplayed(Lcom/applovin/c/a;)V
    .locals 2

    iget-object v1, p0, Lcom/applovin/adview/q;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    move-object v0, p1

    check-cast v0, Lcom/applovin/a/b/a;

    invoke-static {v1, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(Lcom/applovin/adview/AppLovinInterstitialActivity;Lcom/applovin/a/b/a;)Lcom/applovin/a/b/a;

    iget-object v0, p0, Lcom/applovin/adview/q;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->y(Lcom/applovin/adview/AppLovinInterstitialActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/q;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0, p1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->b(Lcom/applovin/adview/AppLovinInterstitialActivity;Lcom/applovin/c/a;)V

    :cond_0
    return-void
.end method

.method public adHidden(Lcom/applovin/c/a;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/q;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0, p1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(Lcom/applovin/adview/AppLovinInterstitialActivity;Lcom/applovin/c/a;)V

    return-void
.end method
