.class Lcom/helpshift/app/ActionBarHelperBase$HomeView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 454
    iput-object p1, p0, Lcom/helpshift/app/ActionBarHelperBase$HomeView;->b:Landroid/content/Context;

    .line 455
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 458
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 459
    iput-object p1, p0, Lcom/helpshift/app/ActionBarHelperBase$HomeView;->b:Landroid/content/Context;

    .line 460
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase$HomeView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 464
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 468
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 469
    sget v0, Lcom/helpshift/g;->K:I

    invoke-virtual {p0, v0}, Lcom/helpshift/app/ActionBarHelperBase$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase$HomeView;->a:Landroid/widget/ImageView;

    .line 470
    return-void
.end method
