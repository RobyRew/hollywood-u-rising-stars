.class Landroid/support/v7/widget/ds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/dl;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/dl;)V
    .locals 0

    .prologue
    .line 1328
    iput-object p1, p0, Landroid/support/v7/widget/ds;->a:Landroid/support/v7/widget/dl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1329
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1333
    iget-object v0, p0, Landroid/support/v7/widget/ds;->a:Landroid/support/v7/widget/dl;

    iget-object v0, v0, Landroid/support/v7/widget/dl;->c:Landroid/support/v7/widget/cp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ds;->a:Landroid/support/v7/widget/dl;

    iget-object v0, v0, Landroid/support/v7/widget/dl;->c:Landroid/support/v7/widget/cp;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ds;->a:Landroid/support/v7/widget/dl;

    iget-object v0, v0, Landroid/support/v7/widget/dl;->c:Landroid/support/v7/widget/cp;

    .line 1334
    invoke-virtual {v0}, Landroid/support/v7/widget/cp;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ds;->a:Landroid/support/v7/widget/dl;

    iget-object v1, v1, Landroid/support/v7/widget/dl;->c:Landroid/support/v7/widget/cp;

    invoke-virtual {v1}, Landroid/support/v7/widget/cp;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ds;->a:Landroid/support/v7/widget/dl;

    iget-object v0, v0, Landroid/support/v7/widget/dl;->c:Landroid/support/v7/widget/cp;

    .line 1335
    invoke-virtual {v0}, Landroid/support/v7/widget/cp;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ds;->a:Landroid/support/v7/widget/dl;

    iget v1, v1, Landroid/support/v7/widget/dl;->d:I

    if-gt v0, v1, :cond_0

    .line 1336
    iget-object v0, p0, Landroid/support/v7/widget/ds;->a:Landroid/support/v7/widget/dl;

    iget-object v0, v0, Landroid/support/v7/widget/dl;->g:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1337
    iget-object v0, p0, Landroid/support/v7/widget/ds;->a:Landroid/support/v7/widget/dl;

    invoke-virtual {v0}, Landroid/support/v7/widget/dl;->d()V

    .line 1339
    :cond_0
    return-void
.end method
