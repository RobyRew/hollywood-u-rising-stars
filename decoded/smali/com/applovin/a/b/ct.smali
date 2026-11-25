.class Lcom/applovin/a/b/ct;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/applovin/c/g;

.field final b:Ljava/lang/Object;

.field c:Lcom/applovin/c/a;

.field d:J

.field e:Z

.field private final f:Ljava/util/Collection;

.field private final g:Ljava/util/Collection;


# direct methods
.method private constructor <init>(Lcom/applovin/c/g;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/applovin/a/b/ct;->f:Ljava/util/Collection;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/applovin/a/b/ct;->g:Ljava/util/Collection;

    iput-object p1, p0, Lcom/applovin/a/b/ct;->a:Lcom/applovin/c/g;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/a/b/ct;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/a/b/ct;->c:Lcom/applovin/c/a;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/applovin/a/b/ct;->d:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/a/b/ct;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/c/g;Lcom/applovin/a/b/cp;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/a/b/ct;-><init>(Lcom/applovin/c/g;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/a/b/ct;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/ct;->g:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic b(Lcom/applovin/a/b/ct;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/ct;->f:Ljava/util/Collection;

    return-object v0
.end method
