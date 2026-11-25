.class public Lcom/applovin/adview/d;
.super Landroid/view/View;


# instance fields
.field private a:Lcom/applovin/adview/e;


# direct methods
.method public static a(Lcom/applovin/c/n;Landroid/app/Activity;)Lcom/applovin/adview/e;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No activity specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/applovin/a/a/c;

    invoke-direct {v0}, Lcom/applovin/a/a/c;-><init>()V

    invoke-interface {v0, p0, p1}, Lcom/applovin/adview/h;->a(Lcom/applovin/c/n;Landroid/app/Activity;)Lcom/applovin/adview/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/applovin/adview/d;->a:Lcom/applovin/adview/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/d;->a:Lcom/applovin/adview/e;

    invoke-interface {v0}, Lcom/applovin/adview/e;->a()V

    :cond_0
    return-void
.end method
