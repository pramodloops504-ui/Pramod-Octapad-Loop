.class Lcom/pramod/loopmidi/MainActivity$14;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/loopmidi/MainActivity;->initSeekBars()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pramod/loopmidi/MainActivity;


# direct methods
.method constructor <init>(Lcom/pramod/loopmidi/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/pramod/loopmidi/MainActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 584
    iput-object p1, p0, Lcom/pramod/loopmidi/MainActivity$14;->this$0:Lcom/pramod/loopmidi/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 587
    iget-object v0, p0, Lcom/pramod/loopmidi/MainActivity$14;->this$0:Lcom/pramod/loopmidi/MainActivity;

    invoke-static {v0}, Lcom/pramod/loopmidi/MainActivity;->-$$Nest$fgetpadDelayOn(Lcom/pramod/loopmidi/MainActivity;)[Z

    move-result-object v0

    iget-object v1, p0, Lcom/pramod/loopmidi/MainActivity$14;->this$0:Lcom/pramod/loopmidi/MainActivity;

    invoke-static {v1}, Lcom/pramod/loopmidi/MainActivity;->-$$Nest$fgetselectedPad(Lcom/pramod/loopmidi/MainActivity;)I

    move-result v1

    aput-boolean p2, v0, v1

    .line 588
    iget-object v0, p0, Lcom/pramod/loopmidi/MainActivity$14;->this$0:Lcom/pramod/loopmidi/MainActivity;

    .line 589
    .local v0, "mainActivity":Lcom/pramod/loopmidi/MainActivity;
    invoke-static {v0}, Lcom/pramod/loopmidi/MainActivity;->-$$Nest$fgetkitIndex(Lcom/pramod/loopmidi/MainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pramod/loopmidi/MainActivity;->saveKitToMemory(I)V

    .line 590
    return-void
.end method
