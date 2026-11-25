.class public Lcom/applovin/adview/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/applovin/a/b/dk;


# direct methods
.method public constructor <init>(Lcom/applovin/c/n;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SDK cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/applovin/a/b/dk;

    invoke-direct {v0, p1}, Lcom/applovin/a/b/dk;-><init>(Lcom/applovin/c/n;)V

    iput-object v0, p0, Lcom/applovin/adview/c;->a:Lcom/applovin/a/b/dk;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/applovin/adview/c;
    .locals 1

    invoke-static {p0}, Lcom/applovin/c/n;->b(Landroid/content/Context;)Lcom/applovin/c/n;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/adview/c;->a(Lcom/applovin/c/n;)Lcom/applovin/adview/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/applovin/c/n;)Lcom/applovin/adview/c;
    .locals 1

    new-instance v0, Lcom/applovin/adview/c;

    invoke-direct {v0, p0}, Lcom/applovin/adview/c;-><init>(Lcom/applovin/c/n;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/applovin/c/e;Lcom/applovin/c/j;Lcom/applovin/c/c;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/adview/c;->a(Landroid/app/Activity;Lcom/applovin/c/e;Lcom/applovin/c/j;Lcom/applovin/c/c;Lcom/applovin/c/b;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/applovin/c/e;Lcom/applovin/c/j;Lcom/applovin/c/c;Lcom/applovin/c/b;)V
    .locals 6

    iget-object v0, p0, Lcom/applovin/adview/c;->a:Lcom/applovin/a/b/dk;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/a/b/dk;->a(Landroid/app/Activity;Lcom/applovin/c/e;Lcom/applovin/c/j;Lcom/applovin/c/c;Lcom/applovin/c/b;)V

    return-void
.end method

.method public a(Lcom/applovin/c/d;)V
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "AppLovinIncentivizedInterstitial"

    const-string/jumbo v1, "AppLovinAdLoadListener was null when preloading incentivized interstitials; using a listener is highly recommended."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/applovin/adview/c;->a:Lcom/applovin/a/b/dk;

    invoke-virtual {v0, p1}, Lcom/applovin/a/b/dk;->a(Lcom/applovin/c/d;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/applovin/a/b/dk;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/c;->a:Lcom/applovin/a/b/dk;

    invoke-virtual {v0}, Lcom/applovin/a/b/dk;->a()Z

    move-result v0

    return v0
.end method
