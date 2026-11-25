.class Lcom/helpshift/cp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/helpshift/bu;


# direct methods
.method constructor <init>(Lcom/helpshift/bu;)V
    .locals 0

    .prologue
    .line 610
    iput-object p1, p0, Lcom/helpshift/cp;->a:Lcom/helpshift/bu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/helpshift/cp;->a:Lcom/helpshift/bu;

    invoke-static {v0}, Lcom/helpshift/bu;->k(Lcom/helpshift/bu;)Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 614
    iget-object v0, p0, Lcom/helpshift/cp;->a:Lcom/helpshift/bu;

    invoke-static {v0}, Lcom/helpshift/bu;->l(Lcom/helpshift/bu;)Lcom/helpshift/dx;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->v(Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/helpshift/cp;->a:Lcom/helpshift/bu;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/bu;->a(Lcom/helpshift/bu;Ljava/lang/Boolean;)V

    .line 616
    iget-object v0, p0, Lcom/helpshift/cp;->a:Lcom/helpshift/bu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/helpshift/bu;->a(Lcom/helpshift/bu;Z)Z

    .line 617
    iget-object v0, p0, Lcom/helpshift/cp;->a:Lcom/helpshift/bu;

    invoke-static {v0}, Lcom/helpshift/bu;->b(Lcom/helpshift/bu;)V

    .line 618
    return-void
.end method
