.class Lcom/helpshift/ev;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/helpshift/SearchResultActivity;


# direct methods
.method constructor <init>(Lcom/helpshift/SearchResultActivity;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/helpshift/ev;->a:Lcom/helpshift/SearchResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 70
    const-string/jumbo v0, "taf"

    invoke-static {v0}, Lcom/helpshift/br;->a(Ljava/lang/String;)V

    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 72
    const-string/jumbo v1, "action"

    const-string/jumbo v2, "startConversation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object v1, p0, Lcom/helpshift/ev;->a:Lcom/helpshift/SearchResultActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/helpshift/SearchResultActivity;->setResult(ILandroid/content/Intent;)V

    .line 74
    iget-object v0, p0, Lcom/helpshift/ev;->a:Lcom/helpshift/SearchResultActivity;

    invoke-virtual {v0}, Lcom/helpshift/SearchResultActivity;->finish()V

    .line 75
    return-void
.end method
