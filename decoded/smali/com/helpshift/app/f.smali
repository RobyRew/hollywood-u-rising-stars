.class Lcom/helpshift/app/f;
.super Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/helpshift/f/g;

.field final synthetic b:Lcom/helpshift/app/ActionBarHelperBase;


# direct methods
.method constructor <init>(Lcom/helpshift/app/ActionBarHelperBase;Lcom/helpshift/f/g;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/helpshift/app/f;->b:Lcom/helpshift/app/ActionBarHelperBase;

    iput-object p2, p0, Lcom/helpshift/app/f;->a:Lcom/helpshift/f/g;

    invoke-direct {p0}, Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/helpshift/app/f;->a:Lcom/helpshift/f/g;

    invoke-interface {v0, p1}, Lcom/helpshift/f/g;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/helpshift/app/f;->a:Lcom/helpshift/f/g;

    invoke-interface {v0, p1}, Lcom/helpshift/f/g;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
