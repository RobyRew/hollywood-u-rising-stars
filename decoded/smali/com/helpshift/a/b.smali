.class Lcom/helpshift/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/helpshift/g/a;

.field final synthetic b:Lcom/helpshift/a/a;


# direct methods
.method constructor <init>(Lcom/helpshift/a/a;Lcom/helpshift/g/a;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/helpshift/a/b;->b:Lcom/helpshift/a/a;

    iput-object p2, p0, Lcom/helpshift/a/b;->a:Lcom/helpshift/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/helpshift/a/b;->b:Lcom/helpshift/a/a;

    invoke-static {v0}, Lcom/helpshift/a/a;->a(Lcom/helpshift/a/a;)Lcom/helpshift/bu;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/a/b;->a:Lcom/helpshift/g/a;

    iget-object v1, v1, Lcom/helpshift/g/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/helpshift/bu;->a(Ljava/lang/String;)V

    .line 175
    return-void
.end method
