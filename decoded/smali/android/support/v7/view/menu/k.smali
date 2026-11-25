.class Landroid/support/v7/view/menu/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/support/v7/widget/dw;

.field public final b:Landroid/support/v7/view/menu/o;

.field public final c:I


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/dw;Landroid/support/v7/view/menu/o;I)V
    .locals 0

    .prologue
    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 742
    iput-object p1, p0, Landroid/support/v7/view/menu/k;->a:Landroid/support/v7/widget/dw;

    .line 743
    iput-object p2, p0, Landroid/support/v7/view/menu/k;->b:Landroid/support/v7/view/menu/o;

    .line 744
    iput p3, p0, Landroid/support/v7/view/menu/k;->c:I

    .line 745
    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->a:Landroid/support/v7/widget/dw;

    invoke-virtual {v0}, Landroid/support/v7/widget/dw;->g()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method
