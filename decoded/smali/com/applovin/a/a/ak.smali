.class public abstract Lcom/applovin/a/a/ak;
.super Landroid/view/View;


# instance fields
.field protected final a:Lcom/applovin/c/n;

.field protected final b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/applovin/c/n;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/applovin/a/a/ak;->b:Landroid/content/Context;

    iput-object p1, p0, Lcom/applovin/a/a/ak;->a:Lcom/applovin/c/n;

    return-void
.end method

.method public static a(Lcom/applovin/c/n;Landroid/content/Context;Lcom/applovin/a/a/al;)Lcom/applovin/a/a/ak;
    .locals 1

    sget-object v0, Lcom/applovin/a/a/al;->b:Lcom/applovin/a/a/al;

    invoke-virtual {p2, v0}, Lcom/applovin/a/a/al;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/applovin/a/a/p;

    invoke-direct {v0, p0, p1}, Lcom/applovin/a/a/p;-><init>(Lcom/applovin/c/n;Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/applovin/a/a/q;

    invoke-direct {v0, p0, p1}, Lcom/applovin/a/a/q;-><init>(Lcom/applovin/c/n;Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract a(I)V
.end method
