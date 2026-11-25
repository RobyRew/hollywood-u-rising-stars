.class Lcom/applovin/a/b/af;
.super Lcom/applovin/c/o;


# instance fields
.field private final a:Ljava/util/Map;

.field private b:Lcom/applovin/a/b/cw;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/applovin/c/o;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applovin/a/b/af;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method a()Lcom/applovin/a/b/cw;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/af;->b:Lcom/applovin/a/b/cw;

    return-object v0
.end method

.method b()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/af;->a:Ljava/util/Map;

    return-object v0
.end method
