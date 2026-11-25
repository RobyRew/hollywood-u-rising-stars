.class Landroid/support/v7/app/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/app/AlertController;

.field final synthetic b:Landroid/support/v7/app/l;


# direct methods
.method constructor <init>(Landroid/support/v7/app/l;Landroid/support/v7/app/AlertController;)V
    .locals 0

    .prologue
    .line 1042
    iput-object p1, p0, Landroid/support/v7/app/o;->b:Landroid/support/v7/app/l;

    iput-object p2, p0, Landroid/support/v7/app/o;->a:Landroid/support/v7/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 1045
    iget-object v0, p0, Landroid/support/v7/app/o;->b:Landroid/support/v7/app/l;

    iget-object v0, v0, Landroid/support/v7/app/l;->u:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Landroid/support/v7/app/o;->a:Landroid/support/v7/app/AlertController;

    iget-object v1, v1, Landroid/support/v7/app/AlertController;->a:Landroid/support/v7/app/ax;

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1046
    iget-object v0, p0, Landroid/support/v7/app/o;->b:Landroid/support/v7/app/l;

    iget-boolean v0, v0, Landroid/support/v7/app/l;->E:Z

    if-nez v0, :cond_0

    .line 1047
    iget-object v0, p0, Landroid/support/v7/app/o;->a:Landroid/support/v7/app/AlertController;

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->a:Landroid/support/v7/app/ax;

    invoke-virtual {v0}, Landroid/support/v7/app/ax;->dismiss()V

    .line 1049
    :cond_0
    return-void
.end method
