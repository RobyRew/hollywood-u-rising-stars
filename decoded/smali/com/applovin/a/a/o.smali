.class Lcom/applovin/a/a/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/a/a/j;


# direct methods
.method constructor <init>(Lcom/applovin/a/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/a/o;->a:Lcom/applovin/a/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/a/o;->a:Lcom/applovin/a/a/j;

    invoke-static {v0}, Lcom/applovin/a/a/j;->d(Lcom/applovin/a/a/j;)Lcom/applovin/a/a/am;

    move-result-object v0

    invoke-interface {v0}, Lcom/applovin/a/a/am;->dismiss()V

    return-void
.end method
