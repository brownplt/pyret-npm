import cmdline-lib as CL
args = CL.command-line-arguments()
if args.length() >= 2:
    print("Ahoy " + args.get(1) + "!\n")
else:
    print("Ahoy world!\n")
end
