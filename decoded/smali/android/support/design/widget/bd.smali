.class Landroid/support/design/widget/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Landroid/support/design/widget/bc;


# direct methods
.method constructor <init>(Landroid/support/design/widget/bc;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Landroid/support/design/widget/bd;->a:Landroid/support/design/widget/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Landroid/support/design/widget/bd;->a:Landroid/support/design/widget/bc;

    invoke-virtual {v0}, Landroid/support/design/widget/bc;->d()V

    .line 177
    const/4 v0, 0x1

    return v0
.end method
