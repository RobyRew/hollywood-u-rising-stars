.class abstract Lcom/applovin/a/b/ba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final e:Ljava/lang/String;

.field protected final f:Lcom/applovin/a/b/e;

.field final g:Lcom/applovin/c/l;

.field final h:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/applovin/a/b/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/applovin/a/b/ba;->f:Lcom/applovin/a/b/e;

    if-eqz p1, :cond_1

    :goto_0
    iput-object p1, p0, Lcom/applovin/a/b/ba;->e:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/a/b/ba;->g:Lcom/applovin/c/l;

    invoke-virtual {p2}, Lcom/applovin/a/b/e;->h()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/a/b/ba;->h:Landroid/content/Context;

    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/ba;->e:Ljava/lang/String;

    return-object v0
.end method

.method b()V
    .locals 0

    return-void
.end method
