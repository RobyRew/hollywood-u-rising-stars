.class Lcom/helpshift/by;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Landroid/widget/ImageButton;

.field final synthetic b:Lcom/helpshift/bu;


# direct methods
.method constructor <init>(Lcom/helpshift/bu;Landroid/widget/ImageButton;)V
    .locals 0

    .prologue
    .line 705
    iput-object p1, p0, Lcom/helpshift/by;->b:Lcom/helpshift/bu;

    iput-object p2, p0, Lcom/helpshift/by;->a:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 707
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/helpshift/by;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    .line 710
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
