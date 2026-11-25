.class Lcom/applovin/adview/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/applovin/adview/AppLovinInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/adview/v;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/applovin/adview/v;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->k(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v0

    const-string/jumbo v3, "AppLovinInterstitialActivity"

    const-string/jumbo v4, "Video view tapped!"

    invoke-interface {v0, v3, v4}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/adview/v;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->l(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/a/b/bg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/a/b/bg;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/v;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->m(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/a/a/ai;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/v;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->m(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/a/a/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/a/a/ai;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/v;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->m(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/a/a/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/a/a/ai;->getVisibility()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_2

    move v3, v2

    :goto_1
    if-eqz v0, :cond_3

    :goto_2
    invoke-direct {v4, v3, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x2ee

    invoke-virtual {v4, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lcom/applovin/adview/w;

    invoke-direct {v1, p0, v0}, Lcom/applovin/adview/w;-><init>(Lcom/applovin/adview/v;Z)V

    invoke-virtual {v4, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/applovin/adview/v;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->m(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/a/a/ai;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/applovin/a/a/ai;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method
