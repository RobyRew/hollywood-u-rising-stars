.class public Lcom/applovin/adview/b;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Lcom/applovin/adview/a;


# direct methods
.method public constructor <init>(Lcom/applovin/c/n;Lcom/applovin/c/g;Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, p3, v0}, Lcom/applovin/adview/b;->a(Lcom/applovin/c/g;Lcom/applovin/c/n;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;Landroid/content/Context;)V
    .locals 5

    const/16 v4, 0xdc

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, 0x1

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string/jumbo v3, "AppLovin Ad"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0, v2, v1, v0}, Lcom/applovin/adview/b;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private a(Lcom/applovin/c/g;Lcom/applovin/c/n;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-virtual {p0}, Lcom/applovin/adview/b;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/applovin/a/a/a;

    invoke-direct {v0}, Lcom/applovin/a/a/a;-><init>()V

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/applovin/adview/a;->a(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/applovin/c/g;Lcom/applovin/c/n;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/applovin/adview/b;->a:Lcom/applovin/adview/a;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p4, p3}, Lcom/applovin/adview/b;->a(Landroid/util/AttributeSet;Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/adview/b;->a:Lcom/applovin/adview/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/b;->a:Lcom/applovin/adview/a;

    invoke-interface {v0}, Lcom/applovin/adview/a;->a()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "AppLovinSdk"

    const-string/jumbo v1, "Unable to load next ad: AppLovinAdView is not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Lcom/applovin/c/a;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/b;->a:Lcom/applovin/adview/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/b;->a:Lcom/applovin/adview/a;

    invoke-interface {v0, p1}, Lcom/applovin/adview/a;->a(Lcom/applovin/c/a;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/applovin/c/b;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/b;->a:Lcom/applovin/adview/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/b;->a:Lcom/applovin/adview/a;

    invoke-interface {v0, p1}, Lcom/applovin/adview/a;->a(Lcom/applovin/c/b;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/applovin/c/c;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/b;->a:Lcom/applovin/adview/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/b;->a:Lcom/applovin/adview/a;

    invoke-interface {v0, p1}, Lcom/applovin/adview/a;->a(Lcom/applovin/c/c;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/applovin/c/j;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/b;->a:Lcom/applovin/adview/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/b;->a:Lcom/applovin/adview/a;

    invoke-interface {v0, p1}, Lcom/applovin/adview/a;->a(Lcom/applovin/c/j;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/b;->a:Lcom/applovin/adview/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/b;->a:Lcom/applovin/adview/a;

    invoke-interface {v0, p1}, Lcom/applovin/adview/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/b;->a:Lcom/applovin/adview/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/b;->a:Lcom/applovin/adview/a;

    invoke-interface {v0}, Lcom/applovin/adview/a;->b()V

    :cond_0
    return-void
.end method

.method public c()Lcom/applovin/adview/a;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/b;->a:Lcom/applovin/adview/a;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/b;->a:Lcom/applovin/adview/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/b;->a:Lcom/applovin/adview/a;

    invoke-interface {v0}, Lcom/applovin/adview/a;->c()V

    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/applovin/adview/b;->a:Lcom/applovin/adview/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/b;->a:Lcom/applovin/adview/a;

    invoke-interface {v0, p2}, Lcom/applovin/adview/a;->a(I)V

    :cond_0
    return-void
.end method
