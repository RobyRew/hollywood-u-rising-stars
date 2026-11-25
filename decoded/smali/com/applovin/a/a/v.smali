.class Lcom/applovin/a/a/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/a/a/a;


# direct methods
.method private constructor <init>(Lcom/applovin/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/a/v;->a:Lcom/applovin/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/a/a/a;Lcom/applovin/a/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/a/a/v;-><init>(Lcom/applovin/a/a/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/a/v;->a:Lcom/applovin/a/a/a;

    invoke-static {v0}, Lcom/applovin/a/a/a;->c(Lcom/applovin/a/a/a;)Lcom/applovin/a/a/ae;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/applovin/a/a/ae;->setVisibility(I)V

    return-void
.end method
