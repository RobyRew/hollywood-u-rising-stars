.class Lcom/helpshift/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/helpshift/g/a;

.field final synthetic b:I

.field final synthetic c:Lcom/helpshift/a/a;


# direct methods
.method constructor <init>(Lcom/helpshift/a/a;Lcom/helpshift/g/a;I)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lcom/helpshift/a/j;->c:Lcom/helpshift/a/a;

    iput-object p2, p0, Lcom/helpshift/a/j;->a:Lcom/helpshift/g/a;

    iput p3, p0, Lcom/helpshift/a/j;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 494
    iget-object v0, p0, Lcom/helpshift/a/j;->a:Lcom/helpshift/g/a;

    iget-object v0, v0, Lcom/helpshift/g/a;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/helpshift/a/j;->c:Lcom/helpshift/a/a;

    invoke-static {v0}, Lcom/helpshift/a/a;->a(Lcom/helpshift/a/a;)Lcom/helpshift/bu;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/a/j;->a:Lcom/helpshift/g/a;

    iget-object v1, v1, Lcom/helpshift/g/a;->g:Ljava/lang/String;

    iget v2, p0, Lcom/helpshift/a/j;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/bu;->a(Ljava/lang/String;I)V

    .line 497
    :cond_0
    return-void
.end method
