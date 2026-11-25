.class Lcom/helpshift/cz;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/helpshift/HSQuestionsList;


# direct methods
.method constructor <init>(Lcom/helpshift/HSQuestionsList;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/helpshift/cz;->a:Lcom/helpshift/HSQuestionsList;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/helpshift/cz;->a:Lcom/helpshift/HSQuestionsList;

    invoke-static {v0}, Lcom/helpshift/HSQuestionsList;->a(Lcom/helpshift/HSQuestionsList;)Lcom/helpshift/du;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpshift/du;->a(I)V

    .line 56
    return-void
.end method
