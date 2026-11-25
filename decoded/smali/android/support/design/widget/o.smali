.class Landroid/support/design/widget/o;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/design/widget/h;


# direct methods
.method constructor <init>(Landroid/support/design/widget/h;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Landroid/support/design/widget/o;->a:Landroid/support/design/widget/h;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Landroid/support/design/widget/o;->a:Landroid/support/design/widget/h;

    invoke-virtual {v0}, Landroid/support/design/widget/h;->d()V

    .line 506
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 498
    iget-object v0, p0, Landroid/support/design/widget/o;->a:Landroid/support/design/widget/h;

    invoke-static {v0}, Landroid/support/design/widget/h;->a(Landroid/support/design/widget/h;)Landroid/support/design/widget/t;

    move-result-object v0

    const/16 v1, 0x46

    const/16 v2, 0xb4

    invoke-interface {v0, v1, v2}, Landroid/support/design/widget/t;->a(II)V

    .line 501
    return-void
.end method
