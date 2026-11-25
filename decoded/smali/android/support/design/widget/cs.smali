.class Landroid/support/design/widget/cs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Landroid/support/design/widget/co;

.field final synthetic b:Landroid/support/design/widget/cr;


# direct methods
.method constructor <init>(Landroid/support/design/widget/cr;Landroid/support/design/widget/co;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Landroid/support/design/widget/cs;->b:Landroid/support/design/widget/cr;

    iput-object p2, p0, Landroid/support/design/widget/cs;->a:Landroid/support/design/widget/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Landroid/support/design/widget/cs;->a:Landroid/support/design/widget/co;

    invoke-interface {v0}, Landroid/support/design/widget/co;->a()V

    .line 57
    return-void
.end method
