.class Lcom/applovin/a/b/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/applovin/a/b/aa;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/ae;->a:Lcom/applovin/a/b/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/applovin/a/b/ae;->a:Lcom/applovin/a/b/aa;

    iget-object v0, v0, Lcom/applovin/a/b/aa;->a:Lcom/applovin/a/b/z;

    invoke-static {v0}, Lcom/applovin/a/b/z;->f(Lcom/applovin/a/b/z;)Lcom/applovin/a/b/dk;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/a/b/ae;->a:Lcom/applovin/a/b/aa;

    iget-object v1, v1, Lcom/applovin/a/b/aa;->a:Lcom/applovin/a/b/z;

    invoke-static {v1}, Lcom/applovin/a/b/z;->e(Lcom/applovin/a/b/z;)Lcom/applovin/c/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/dk;->a(Lcom/applovin/c/e;)V

    return-void
.end method
