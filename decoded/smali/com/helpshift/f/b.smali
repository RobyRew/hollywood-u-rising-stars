.class public Lcom/helpshift/f/b;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/helpshift/f/c;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/Button;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/helpshift/f/b;->e:I

    .line 33
    invoke-direct {p0, p1}, Lcom/helpshift/f/b;->a(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 37
    sget v0, Lcom/helpshift/h;->B:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    sget v0, Lcom/helpshift/g;->Q:I

    invoke-virtual {p0, v0}, Lcom/helpshift/f/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/helpshift/f/b;->b:Landroid/widget/ImageView;

    .line 40
    sget v0, Lcom/helpshift/g;->R:I

    invoke-virtual {p0, v0}, Lcom/helpshift/f/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 41
    sget v1, Lcom/helpshift/g;->S:I

    invoke-virtual {p0, v1}, Lcom/helpshift/f/b;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/helpshift/f/b;->c:Landroid/widget/Button;

    .line 43
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/helpshift/f/b;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .prologue
    .line 79
    iput p1, p0, Lcom/helpshift/f/b;->e:I

    .line 80
    packed-switch p1, :pswitch_data_0

    .line 88
    iget-object v0, p0, Lcom/helpshift/f/b;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/helpshift/f/b;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/helpshift/k;->H:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcom/helpshift/f/b;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/helpshift/f/b;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/helpshift/k;->F:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v0, p0, Lcom/helpshift/f/b;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/helpshift/f/b;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/helpshift/k;->G:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/helpshift/f/c;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/helpshift/f/b;->a:Lcom/helpshift/f/c;

    .line 66
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/helpshift/f/b;->d:Ljava/lang/String;

    .line 70
    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/helpshift/e/b;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/helpshift/f/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 73
    iget v0, p0, Lcom/helpshift/f/b;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/helpshift/f/b;->a(I)V

    .line 76
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 50
    sget v1, Lcom/helpshift/g;->R:I

    if-ne v0, v1, :cond_1

    .line 51
    iget-object v0, p0, Lcom/helpshift/f/b;->a:Lcom/helpshift/f/c;

    invoke-interface {v0}, Lcom/helpshift/f/c;->a()V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    sget v1, Lcom/helpshift/g;->S:I

    if-ne v0, v1, :cond_0

    .line 53
    iget v0, p0, Lcom/helpshift/f/b;->e:I

    packed-switch v0, :pswitch_data_0

    .line 58
    iget-object v0, p0, Lcom/helpshift/f/b;->a:Lcom/helpshift/f/c;

    iget-object v1, p0, Lcom/helpshift/f/b;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/helpshift/f/c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :pswitch_0
    iget-object v0, p0, Lcom/helpshift/f/b;->a:Lcom/helpshift/f/c;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lcom/helpshift/f/c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
