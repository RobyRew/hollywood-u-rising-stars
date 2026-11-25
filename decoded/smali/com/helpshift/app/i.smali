.class Lcom/helpshift/app/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# instance fields
.field final synthetic a:Lcom/helpshift/f/g;

.field final synthetic b:Lcom/helpshift/app/h;


# direct methods
.method constructor <init>(Lcom/helpshift/app/h;Lcom/helpshift/f/g;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/helpshift/app/i;->b:Lcom/helpshift/app/h;

    iput-object p2, p0, Lcom/helpshift/app/i;->a:Lcom/helpshift/f/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/helpshift/app/i;->a:Lcom/helpshift/f/g;

    invoke-interface {v0, p1}, Lcom/helpshift/f/g;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/helpshift/app/i;->a:Lcom/helpshift/f/g;

    invoke-interface {v0, p1}, Lcom/helpshift/f/g;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
