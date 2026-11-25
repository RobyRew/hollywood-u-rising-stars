.class Lcom/applovin/adview/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/applovin/adview/v;


# direct methods
.method constructor <init>(Lcom/applovin/adview/v;Z)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/adview/w;->b:Lcom/applovin/adview/v;

    iput-boolean p2, p0, Lcom/applovin/adview/w;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-boolean v0, p0, Lcom/applovin/adview/w;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/w;->b:Lcom/applovin/adview/v;

    iget-object v0, v0, Lcom/applovin/adview/v;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->m(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/a/a/ai;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/applovin/a/a/ai;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/adview/w;->b:Lcom/applovin/adview/v;

    iget-object v0, v0, Lcom/applovin/adview/v;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->m(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/a/a/ai;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/a/a/ai;->setVisibility(I)V

    return-void
.end method
