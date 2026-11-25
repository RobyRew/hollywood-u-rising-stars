.class public Landroid/support/v7/widget/ep;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12501
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/fn;)Landroid/support/v7/widget/ep;
    .locals 1

    .prologue
    .line 12511
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/ep;->a(Landroid/support/v7/widget/fn;I)Landroid/support/v7/widget/ep;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/fn;I)Landroid/support/v7/widget/ep;
    .locals 2

    .prologue
    .line 12526
    iget-object v0, p1, Landroid/support/v7/widget/fn;->a:Landroid/view/View;

    .line 12527
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ep;->a:I

    .line 12528
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ep;->b:I

    .line 12529
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ep;->c:I

    .line 12530
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ep;->d:I

    .line 12531
    return-object p0
.end method
