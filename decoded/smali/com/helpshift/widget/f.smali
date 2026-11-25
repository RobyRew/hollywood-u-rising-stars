.class Lcom/helpshift/widget/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/helpshift/widget/SimpleSearchView;


# direct methods
.method constructor <init>(Lcom/helpshift/widget/SimpleSearchView;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/helpshift/widget/f;->a:Lcom/helpshift/widget/SimpleSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/helpshift/widget/f;->a:Lcom/helpshift/widget/SimpleSearchView;

    invoke-static {v0}, Lcom/helpshift/widget/SimpleSearchView;->f(Lcom/helpshift/widget/SimpleSearchView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/widget/f;->a:Lcom/helpshift/widget/SimpleSearchView;

    invoke-static {v1}, Lcom/helpshift/widget/SimpleSearchView;->d(Lcom/helpshift/widget/SimpleSearchView;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 97
    return-void
.end method
