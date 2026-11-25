.class abstract Lcom/applovin/a/b/cd;
.super Lcom/applovin/a/b/ba;

# interfaces
.implements Lcom/applovin/a/b/da;


# instance fields
.field private a:I

.field private b:J

.field private final c:Lcom/applovin/a/b/da;

.field private d:Lcom/applovin/a/b/bd;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/applovin/a/b/e;)V
    .locals 2

    invoke-direct {p0, p1, p3}, Lcom/applovin/a/b/ba;-><init>(Ljava/lang/String;Lcom/applovin/a/b/e;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/applovin/a/b/cd;->b:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/a/b/cd;->d:Lcom/applovin/a/b/bd;

    iput p2, p0, Lcom/applovin/a/b/cd;->a:I

    new-instance v0, Lcom/applovin/a/b/ce;

    invoke-direct {v0, p0, p3, p1}, Lcom/applovin/a/b/ce;-><init>(Lcom/applovin/a/b/cd;Lcom/applovin/a/b/e;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/applovin/a/b/cd;->c:Lcom/applovin/a/b/da;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/applovin/a/b/bd;Lcom/applovin/a/b/e;)V
    .locals 1

    invoke-virtual {p3, p2}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/applovin/a/b/cd;-><init>(Ljava/lang/String;ILcom/applovin/a/b/e;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/a/b/cd;)I
    .locals 1

    iget v0, p0, Lcom/applovin/a/b/cd;->a:I

    return v0
.end method

.method static synthetic a(Lcom/applovin/a/b/cd;I)I
    .locals 0

    iput p1, p0, Lcom/applovin/a/b/cd;->a:I

    return p1
.end method

.method static synthetic b(Lcom/applovin/a/b/cd;)J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/a/b/cd;->b:J

    return-wide v0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/a/b/cd;->d:Lcom/applovin/a/b/bd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/cd;->f:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->g()Lcom/applovin/a/b/be;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/a/b/cd;->d:Lcom/applovin/a/b/bd;

    iget-object v2, p0, Lcom/applovin/a/b/cd;->d:Lcom/applovin/a/b/bd;

    invoke-virtual {v2}, Lcom/applovin/a/b/bd;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/a/b/be;->a(Lcom/applovin/a/b/bd;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/applovin/a/b/be;->b()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/applovin/a/b/cd;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/a/b/cd;->c()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/applovin/a/b/cd;->b:J

    return-void
.end method

.method public a(Lcom/applovin/a/b/bd;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/cd;->d:Lcom/applovin/a/b/bd;

    return-void
.end method

.method protected abstract a(Lcom/applovin/a/b/cz;Lcom/applovin/a/b/da;)V
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/b/cd;->f:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->i()Lcom/applovin/a/b/cz;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/a/b/cd;->c:Lcom/applovin/a/b/da;

    invoke-virtual {p0, v0, v1}, Lcom/applovin/a/b/cd;->a(Lcom/applovin/a/b/cz;Lcom/applovin/a/b/da;)V

    return-void
.end method
