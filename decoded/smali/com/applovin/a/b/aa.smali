.class Lcom/applovin/a/b/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/a/b/z;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/z;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/aa;->a:Lcom/applovin/a/b/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/applovin/a/b/aa;->a:Lcom/applovin/a/b/z;

    invoke-static {v0}, Lcom/applovin/a/b/z;->a(Lcom/applovin/a/b/z;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/applovin/a/b/aa;->a:Lcom/applovin/a/b/z;

    invoke-static {v0}, Lcom/applovin/a/b/z;->b(Lcom/applovin/a/b/z;)Lcom/applovin/a/b/e;

    move-result-object v0

    sget-object v2, Lcom/applovin/a/b/bb;->X:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v2}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/applovin/a/b/aa;->a:Lcom/applovin/a/b/z;

    invoke-static {v0}, Lcom/applovin/a/b/z;->b(Lcom/applovin/a/b/z;)Lcom/applovin/a/b/e;

    move-result-object v0

    sget-object v2, Lcom/applovin/a/b/bb;->Y:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v2}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/applovin/a/b/aa;->a:Lcom/applovin/a/b/z;

    invoke-static {v0}, Lcom/applovin/a/b/z;->b(Lcom/applovin/a/b/z;)Lcom/applovin/a/b/e;

    move-result-object v0

    sget-object v2, Lcom/applovin/a/b/bb;->Z:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v2}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v2, Lcom/applovin/a/b/ab;

    invoke-direct {v2, p0}, Lcom/applovin/a/b/ab;-><init>(Lcom/applovin/a/b/aa;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/applovin/a/b/aa;->a:Lcom/applovin/a/b/z;

    invoke-static {v0}, Lcom/applovin/a/b/z;->b(Lcom/applovin/a/b/z;)Lcom/applovin/a/b/e;

    move-result-object v0

    sget-object v2, Lcom/applovin/a/b/bb;->aa:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v2}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v2, Lcom/applovin/a/b/ae;

    invoke-direct {v2, p0}, Lcom/applovin/a/b/ae;-><init>(Lcom/applovin/a/b/aa;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
