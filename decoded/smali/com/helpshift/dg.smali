.class final Lcom/helpshift/dg;
.super Ljava/util/HashMap;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 92
    iput-object p1, p0, Lcom/helpshift/dg;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/helpshift/dg;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 94
    const-string/jumbo v0, "value"

    iget-object v1, p0, Lcom/helpshift/dg;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/dg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string/jumbo v0, "type"

    iget-object v1, p0, Lcom/helpshift/dg;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/dg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method
