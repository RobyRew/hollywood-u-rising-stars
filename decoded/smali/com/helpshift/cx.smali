.class Lcom/helpshift/cx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/helpshift/HSQuestionFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/HSQuestionFragment;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/helpshift/cx;->a:Lcom/helpshift/HSQuestionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/helpshift/cx;->a:Lcom/helpshift/HSQuestionFragment;

    const-string/jumbo v1, "startConversation"

    invoke-static {v0, v1}, Lcom/helpshift/HSQuestionFragment;->b(Lcom/helpshift/HSQuestionFragment;Ljava/lang/String;)V

    .line 340
    return-void
.end method
