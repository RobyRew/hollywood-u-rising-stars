.class Landroid/support/v7/app/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/app/AlertController$RecycleListView;

.field final synthetic b:Landroid/support/v7/app/AlertController;

.field final synthetic c:Landroid/support/v7/app/l;


# direct methods
.method constructor <init>(Landroid/support/v7/app/l;Landroid/support/v7/app/AlertController$RecycleListView;Landroid/support/v7/app/AlertController;)V
    .locals 0

    .prologue
    .line 1052
    iput-object p1, p0, Landroid/support/v7/app/p;->c:Landroid/support/v7/app/l;

    iput-object p2, p0, Landroid/support/v7/app/p;->a:Landroid/support/v7/app/AlertController$RecycleListView;

    iput-object p3, p0, Landroid/support/v7/app/p;->b:Landroid/support/v7/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1055
    iget-object v0, p0, Landroid/support/v7/app/p;->c:Landroid/support/v7/app/l;

    iget-object v0, v0, Landroid/support/v7/app/l;->C:[Z

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Landroid/support/v7/app/p;->c:Landroid/support/v7/app/l;

    iget-object v0, v0, Landroid/support/v7/app/l;->C:[Z

    iget-object v1, p0, Landroid/support/v7/app/p;->a:Landroid/support/v7/app/AlertController$RecycleListView;

    invoke-virtual {v1, p3}, Landroid/support/v7/app/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 1058
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/p;->c:Landroid/support/v7/app/l;

    iget-object v0, v0, Landroid/support/v7/app/l;->G:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Landroid/support/v7/app/p;->b:Landroid/support/v7/app/AlertController;

    iget-object v1, v1, Landroid/support/v7/app/AlertController;->a:Landroid/support/v7/app/ax;

    iget-object v2, p0, Landroid/support/v7/app/p;->a:Landroid/support/v7/app/AlertController$RecycleListView;

    .line 1059
    invoke-virtual {v2, p3}, Landroid/support/v7/app/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result v2

    .line 1058
    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 1060
    return-void
.end method
