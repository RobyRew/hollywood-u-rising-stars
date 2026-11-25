.class public Landroid/support/v7/app/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/support/v7/app/l;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/app/t;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/u;-><init>(Landroid/content/Context;I)V

    .line 292
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    new-instance v0, Landroid/support/v7/app/l;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 322
    invoke-static {p1, p2}, Landroid/support/v7/app/t;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/support/v7/app/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/u;->a:Landroid/support/v7/app/l;

    .line 323
    iput p2, p0, Landroid/support/v7/app/u;->b:I

    .line 324
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Landroid/support/v7/app/u;->a:Landroid/support/v7/app/l;

    iget-object v0, v0, Landroid/support/v7/app/l;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a(Landroid/content/DialogInterface$OnKeyListener;)Landroid/support/v7/app/u;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Landroid/support/v7/app/u;->a:Landroid/support/v7/app/l;

    iput-object p1, v0, Landroid/support/v7/app/l;->r:Landroid/content/DialogInterface$OnKeyListener;

    .line 569
    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/u;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Landroid/support/v7/app/u;->a:Landroid/support/v7/app/l;

    iput-object p1, v0, Landroid/support/v7/app/l;->d:Landroid/graphics/drawable/Drawable;

    .line 424
    return-object p0
.end method

.method public a(Landroid/view/View;)Landroid/support/v7/app/u;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Landroid/support/v7/app/u;->a:Landroid/support/v7/app/l;

    iput-object p1, v0, Landroid/support/v7/app/l;->g:Landroid/view/View;

    .line 377
    return-object p0
.end method

.method public a(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/u;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Landroid/support/v7/app/u;->a:Landroid/support/v7/app/l;

    iput-object p1, v0, Landroid/support/v7/app/l;->t:Landroid/widget/ListAdapter;

    .line 608
    iget-object v0, p0, Landroid/support/v7/app/u;->a:Landroid/support/v7/app/l;

    iput-object p2, v0, Landroid/support/v7/app/l;->u:Landroid/content/DialogInterface$OnClickListener;

    .line 609
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v7/app/u;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Landroid/support/v7/app/u;->a:Landroid/support/v7/app/l;

    iput-object p1, v0, Landroid/support/v7/app/l;->f:Ljava/lang/CharSequence;

    .line 356
    return-object p0
.end method

.method public b()Landroid/support/v7/app/t;
    .locals 3

    .prologue
    .line 929
    new-instance v0, Landroid/support/v7/app/t;

    iget-object v1, p0, Landroid/support/v7/app/u;->a:Landroid/support/v7/app/l;

    iget-object v1, v1, Landroid/support/v7/app/l;->a:Landroid/content/Context;

    iget v2, p0, Landroid/support/v7/app/u;->b:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/t;-><init>(Landroid/content/Context;I)V

    .line 930
    iget-object v1, p0, Landroid/support/v7/app/u;->a:Landroid/support/v7/app/l;

    iget-object v2, v0, Landroid/support/v7/app/t;->a:Landroid/support/v7/app/AlertController;

    invoke-virtual {v1, v2}, Landroid/support/v7/app/l;->a(Landroid/support/v7/app/AlertController;)V

    .line 931
    iget-object v1, p0, Landroid/support/v7/app/u;->a:Landroid/support/v7/app/l;

    iget-boolean v1, v1, Landroid/support/v7/app/l;->o:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/app/t;->setCancelable(Z)V

    .line 932
    iget-object v1, p0, Landroid/support/v7/app/u;->a:Landroid/support/v7/app/l;

    iget-boolean v1, v1, Landroid/support/v7/app/l;->o:Z

    if-eqz v1, :cond_0

    .line 933
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/t;->setCanceledOnTouchOutside(Z)V

    .line 935
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/u;->a:Landroid/support/v7/app/l;

    iget-object v1, v1, Landroid/support/v7/app/l;->p:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/t;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 936
    iget-object v1, p0, Landroid/support/v7/app/u;->a:Landroid/support/v7/app/l;

    iget-object v1, v1, Landroid/support/v7/app/l;->q:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/t;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 937
    iget-object v1, p0, Landroid/support/v7/app/u;->a:Landroid/support/v7/app/l;

    iget-object v1, v1, Landroid/support/v7/app/l;->r:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 938
    iget-object v1, p0, Landroid/support/v7/app/u;->a:Landroid/support/v7/app/l;

    iget-object v1, v1, Landroid/support/v7/app/l;->r:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/t;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 940
    :cond_1
    return-object v0
.end method
