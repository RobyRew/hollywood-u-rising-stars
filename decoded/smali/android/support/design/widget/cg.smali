.class Landroid/support/design/widget/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/co;


# instance fields
.field final synthetic a:Landroid/support/design/widget/ck;

.field final synthetic b:Landroid/support/design/widget/cf;


# direct methods
.method constructor <init>(Landroid/support/design/widget/cf;Landroid/support/design/widget/ck;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Landroid/support/design/widget/cg;->b:Landroid/support/design/widget/cf;

    iput-object p2, p0, Landroid/support/design/widget/cg;->a:Landroid/support/design/widget/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Landroid/support/design/widget/cg;->a:Landroid/support/design/widget/ck;

    iget-object v1, p0, Landroid/support/design/widget/cg;->b:Landroid/support/design/widget/cf;

    invoke-interface {v0, v1}, Landroid/support/design/widget/ck;->a(Landroid/support/design/widget/cf;)V

    .line 136
    return-void
.end method
