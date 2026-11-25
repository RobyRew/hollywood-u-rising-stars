.class Landroid/support/v7/widget/ct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/cs;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/cs;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Landroid/support/v7/widget/ct;->a:Landroid/support/v7/widget/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Landroid/support/v7/widget/ct;->a:Landroid/support/v7/widget/cs;

    invoke-static {v0}, Landroid/support/v7/widget/cs;->a(Landroid/support/v7/widget/cs;)V

    .line 100
    return-void
.end method
