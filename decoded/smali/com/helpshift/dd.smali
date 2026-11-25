.class Lcom/helpshift/dd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/helpshift/da;


# direct methods
.method constructor <init>(Lcom/helpshift/da;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/helpshift/dd;->a:Lcom/helpshift/da;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 131
    const-string/jumbo v0, "later"

    invoke-static {v0}, Lcom/helpshift/br;->b(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/helpshift/dd;->a:Lcom/helpshift/da;

    sget-object v1, Lcom/helpshift/ef;->c:Lcom/helpshift/ef;

    invoke-static {v0, v1}, Lcom/helpshift/da;->a(Lcom/helpshift/da;Lcom/helpshift/ef;)V

    .line 133
    return-void
.end method
