.class Lcom/helpshift/cq;
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
    .line 621
    iput-object p1, p0, Lcom/helpshift/cq;->a:Lcom/helpshift/bu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/helpshift/cq;->a:Lcom/helpshift/bu;

    invoke-static {v0}, Lcom/helpshift/bu;->a(Lcom/helpshift/bu;)V

    .line 625
    iget-object v0, p0, Lcom/helpshift/cq;->a:Lcom/helpshift/bu;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/helpshift/bu;->a(Lcom/helpshift/bu;Z)Z

    .line 626
    iget-object v0, p0, Lcom/helpshift/cq;->a:Lcom/helpshift/bu;

    invoke-static {v0}, Lcom/helpshift/bu;->m(Lcom/helpshift/bu;)V

    .line 627
    iget-object v0, p0, Lcom/helpshift/cq;->a:Lcom/helpshift/bu;

    invoke-static {v0}, Lcom/helpshift/bu;->k(Lcom/helpshift/bu;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/helpshift/cq;->a:Lcom/helpshift/bu;

    iget-object v1, p0, Lcom/helpshift/cq;->a:Lcom/helpshift/bu;

    invoke-static {v1}, Lcom/helpshift/bu;->k(Lcom/helpshift/bu;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/bu;->a(Lcom/helpshift/bu;Landroid/view/View;)V

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/helpshift/cq;->a:Lcom/helpshift/bu;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/bu;->a(Lcom/helpshift/bu;Ljava/lang/Boolean;)V

    .line 631
    return-void
.end method
